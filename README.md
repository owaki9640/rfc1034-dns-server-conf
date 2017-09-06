# rfc1034-dns-server-conf

DNS server configurations to reproduce [RFC 1034](https://www.ietf.org/rfc/rfc1034.txt) scenario.

## Hosts

Configured following three DNS servers.

| Host         | IP addresses                                                                                               | Master zones  | Slave zones   |
|:-------------|:-----------------------------------------------------------------------------------------------------------|:--------------|:--------------|
| SRI-NIC.ARPA | 26.0.0.73/24<sup>[*1](#fnote1)</sup><br>26.3.0.73/24<sup>[*1](#fnote1) [*2](#fnote2)</sup><br>10.0.0.51/24 | `.`<br>`EDU.` |               |
| A.ISI.EDU    | 26.3.0.103/24                                                                                              | `ISI.EDU.`    | `.`           |
| C.ISI.EDU    | 10.0.0.52/24                                                                                               |               | `.`<br>`EDU.` |

<a name="fnote1">*1</a> Because 26.0.0.0/8 is global IP network address, use this configuration inside a closed network.

<a name="fnote2">*2</a> 26.3.0.73 on SRI-NIC.ARPA is to communicate with A.ISI.EDU.

## DNS server software / Operating system
 
* [BIND 4.9.7 / FreeBSD 2.2.8](/BIND-4.9.7-FreeBSD-2.2.8/)
* [BIND 8.3.7 / FreeBSD 4.11](/BIND-8.3.7-FreeBSD-4.11/)
* [BIND 9.9.11 / FreeBSD 10.3](/BIND-9.9.11-FreeBSD-10.3/)
