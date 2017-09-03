# rfc1034-dns-server-conf

DNS server configurations to reproduce [RFC 1034](https://www.ietf.org/rfc/rfc1034.txt) scenario.

## Hosts

Configured following three DNS servers.

| Host         | IP addresses                 | Zones                              |
|:-------------|:-----------------------------|:-----------------------------------|
| SRI-NIC.ARPA | 26.0.0.73/24<br>10.0.0.51/24 | `.` (master)<br>`EDU.` (master)    |
| A.ISI.EDU    | 26.3.0.103/24                | `.` (slave)<br>`ISI.EDU.` (master) |
| C.ISI.EDU    | 10.0.0.52/24                 | `.` (slave)<br>`EDU.` (slave)      |
 
## DNS server software / Operating system
 
* [BIND 4.9.7 / FreeBSD 2.2.8](/BIND-4.9.7-FreeBSD-2.2.8/)
