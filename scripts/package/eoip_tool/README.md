EOIP (kernel mode)
====

Userland management utility
---------------------------

##### `eoip` - tunnel management utility

##### Important notes:

- Normally EoIP tunnels in MikroTiks work well by only specifying the remote IP address. This code requires to configure both ends in a symmetrical way - each end of the tunnel should have the local IP address configured and equal to the remote IP address configured on the other end.

- This code does not support the keepalive option; configure the tunnel on MikroTik's end with `!keepalive`.

- It is a good idea to use IP fragmentation and to set MTU on both ends to 1500; using `clamp-tcp-mss` is pointless in this case. For performance it would be best if the transport network's MTU is 42+tunnel MTU (42 bytes is the EoIP protocol overhead) but obviously that is not the case over the Internet.

- The EoIP protocol is connection-less and requires both ends to be able to reach the other end. In case only one end has a public IP, the other end may establish a private network by using another protocol that works over NAT (e.g. `PPTP`, `L2TP`, etc.) and run EoIP on top of the newly established private network.

- Security warning: EoIP is a simple encapsulation and does implement any transport security.

##### Usage:

- to create new eoip tunnel interface:

```
    eoip add tunnel-id <tunnel-id> [name <if-name>]
             [local <src-address>] [remote <dst-address>]
             [link <ifindex>] [ttl <ttl>] [tos <tos>]
```

- to change existing eoip tunnel interface:

```
    eoip change name <if-name> tunnel-id <tunnel-id>
                [local <src-address>] [remote <dst-address>]
                [link <ifindex>] [ttl <ttl>] [tos <tos>]
```

- to list existing eoip tunnels:

```
    eoip list
```

##### Example:

To configure an Ethernet tunnel between a MikroTik with IP 198.51.100.11 and a Linux box with IP 203.0.113.50 with tunnel id 1234:

On MikroTik:

`/interface eoip add clamp-tcp-mss=no !keepalive local-address=198.51.100.11 remote-address=203.0.113.50 tunnel-id=1234 mtu=1500 name=eoip1234`

On Linux:

`eoip add name eoip1234 local 203.0.113.50 remote 198.51.100.11 tunnel-id 1234`


Roadmap
-------

- ~~make a patch for iproute2 to include eoip support~~

- ~~work towards making this code good enough for inclusion in official kernel/iproute2 releases~~

The inclusion of a reverse-engineered proprietary protocol which violates GRE standards is not going to happen in the official Linux kernel. Creating a patch for iproute2 is pointless as it would require patching and replacing one more component that in turn would make supporting a Linux system with kernel mode EoIP even harder. Thus using the included simple tool would be easier and preferred.

The problem in making a stand-alone EoIP kernel module is that it requires replacing gre_demux (`gre.ko`). Linux kernel does not support overloading IP protocol handlers and EoIP does not fit anywhere in the standard gre_demux logic. A relatively sane solution might be to include the GRE demultiplexing logic in the EoIP kernel module itself, to provide a `gre` alias and to blacklist the original `gre.ko`. In this way GRE and PPTP would still be able to coexist with EoIP.

- make a DKMS package

- implement the `keepalive` option and probably make it the default

Development process
-------------------

This code was developed based on information gathered from sniffed datagrams and information from similar projects without involving any reverse engineering of code from the closed source commercial product.

The protocol is not documented and although it looks like there are no deviations in the header format this cannot be guaranteed in all environments or for future releases of the commercial product.

Protocol spec
-------------

After the IP header (which can be fragmented, MTU 1500 is usually used for tunnels) a GRE-like datagram follows.
Note that RFC 1701 is mentioned in MikroTik's docs but there is nothing in common between the standard and the actual protocol used.

Header format (taken from https://github.com/katuma/eoip):

    
     0                   1                   2                   3
     0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |       GRE FLAGS 0x20 0x01     |      Protocol Type  0x6400    | = MAGIC "\x20\x01\x64\x00"
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |   Encapsulated frame length   |           Tunnel ID           |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    | Ethernet frame...                                             |


Strangely enough the frame length is kept into network byte order while tunnel ID is in little endian byte order.


Bugs
----

This code was tested and works without problems on quite a few different 32/64bit x86 systems.

No testing was done on non-x86 and big endian hardware.

There is no guarantee that there are no bugs left. Patches are welcome.


License
-------

All code and code modifications in this project are released under the GPL licence. Look at the COPYING file.

