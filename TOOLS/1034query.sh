#! /bin/sh

PATH=/usr/local/bin:/opt/local/bin:/usr/bin:/bin
export PATH

dnsquery_norec()
{
  type=$1
  qname=$2
  server=$3
  echo "================="
  echo "Non-recursive query $qname type $type to $server"
  echo "-----------------"
  dnsq $type $qname $server
}

dnsquery_rec()
{
  type=$1
  qname=$2
  server=$3
  echo "================="
  echo "Recursive query $qname type $type to $server"
  echo "-----------------"
  dnsqr $type $qname $server
}

echo "##################################"
echo '6.2.1. QNAME=SRI-NIC.ARPA, QTYPE=A'
dnsquery_norec A SRI-NIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.2. QNAME=SRI-NIC.ARPA, QTYPE=*'
dnsquery_norec ANY SRI-NIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.3. QNAME=SRI-NIC.ARPA, QTYPE=MX'
dnsquery_norec MX SRI-NIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.4. QNAME=SRI-NIC.ARPA, QTYPE=NS'
dnsquery_norec NS SRI-NIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.5. QNAME=SIR-NIC.ARPA, QTYPE=A'
dnsquery_norec A SIR-NIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.6. QNAME=BRL.MIL, QTYPE=A'
dnsquery_norec A BRL.MIL 10.0.0.52
echo

echo "##################################"
echo '6.2.7. QNAME=USC-ISIC.ARPA, QTYPE=A'
dnsquery_norec A USC-ISIC.ARPA 26.3.0.103
dnsquery_norec A USC-ISIC.ARPA 10.0.0.52
echo

echo "##################################"
echo '6.2.8. QNAME=USC-ISIC.ARPA, QTYPE=CNAME'
dnsquery_norec CNAME USC-ISIC.ARPA 26.3.0.103
dnsquery_norec A USC-ISIC.ARPA 10.0.0.52
echo
