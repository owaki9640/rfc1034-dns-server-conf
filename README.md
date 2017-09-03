# rfc1034-dns-server-conf

DNS server configurations to reproduce [RFC 1034](https://www.ietf.org/rfc/rfc1034.txt) scenario.

## Hosts

Configured following three DNS servers.

| Host         | IP addresses                                 | Master zones  | Slave zones   |
|:-------------|:---------------------------------------------|:--------------|:--------------|
| SRI-NIC.ARPA | 26.0.0.73/24<br>26.3.0.73/24<br>10.0.0.51/24 | `.`<br>`EDU.` |               |
| A.ISI.EDU    | 26.3.0.103/24                                | `ISI.EDU.`    | `.`           |
| C.ISI.EDU    | 10.0.0.52/24                                 |               | `.`<br>`EDU.` |

Note: 26.3.0.73 on SRI-NIC.ARPA is to communicate with A.ISI.EDU.
 
## DNS server software / Operating system
 
* BIND 4.9.7 / FreeBSD 2.2.8
