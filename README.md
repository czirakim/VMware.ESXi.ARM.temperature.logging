<snippet>
  <content>

## VMware.ESXi.ARM.temperature.logging

The scope of this project is to send the temperature of the VMware ESXi host 
<br>(in my case it is a Raspberry Pi 4) to a logging server.
 

## Usage

The project is made of a 3 files files:
<br> - temp.sh This is used to get the temperature using a the python script
<br>   pimon_util.py and send it to syslog or/and to a custom file. 
<br> - temp.xml This is used to create 2 firewall services to allow syslog messages
<br>   to be sent outbound.  
<br> - firewallsyslog.sh This is used to configure where the syslog messages will be sent
<br>   and activate the 2 services needed to allow traffic outbound.

<br> On this VMware Blog you cand find 2 links to 2 projects  that logg the temperature to 
<br> Graphite and InfluxDB: https://blogs.vmware.com/arm/2020/11/17/get-your-raspberry-pis-temperature-and-more/

## Credits
This was written by Mihai Cziraki
</content>
</snippet>
