############################################################
#
# declaration template pro_site_databases
#
# These are "universal" variables which contain site-wide
# information and can be used as mini-databases for other
# templates.  These are global variable definitions in a 
# declaration template, so these are defined exactly once.
# These are not defined as "final" so be careful NEVER
# to redefine these variables.
# 
# RESPONSIBLE: Charles Loomis <charles.loomis@cern.ch>
#
############################################################

template site/databases;

# Defines the mapping between the full hostname and the IP 
# address. 
final variable DB_IP = nlist(
  escape("apel.example.org"),"192.168.0.4",
  escape("bdii.example.org"),"192.168.0.1",
  escape("ce.example.org"),"192.168.0.2",
  escape("dcache-head.example.org"),"192.168.0.17",
  escape("dcache-pool.example.org"),"192.168.0.18",
  escape("lfc.example.org"),"192.168.0.3",
  escape("px.example.org"),"192.168.0.6",
  escape("rb.example.org"),"192.168.0.7",
  escape("se-dpm-disk.example.org"),"192.168.0.9",
  escape("se-dpm-disk2.example.org"),"192.168.0.10",
  escape("se-dpm-server.example.org"),"192.168.0.11",
  escape("topbdii.example.org"),"192.168.0.12",
  escape("ui.example.org"),"192.168.0.13",
  escape("wmslb.example.org"),"192.168.0.14",
  escape("wn.example.org"),"192.168.0.15",
  escape("wn2.example.org"),"192.168.0.16",
  escape("wn3.example.org"),"192.168.0.21",
  escape("xen-host.example.org"),"192.168.0.17",
  escape("xen-guest.example.org"),"192.168.0.18",
  escape("nagios-master.example.org"),"192.168.0.19",
  escape("nagios-slave-A.example.org"),"192.168.0.20",
  escape("nagios-slave-B.example.org"),"192.168.0.25",
  escape("hydra.example.org"),"192.168.0.21",
  escape("cream.example.org"),"192.168.0.22",
  escape("argus.example.org"),"192.168.0.23",
);

# Defines the mapping between the full hostname and the
# physical machine. 
# A different hardware template must be used for each machine
final variable DB_MACHINE = nlist(
  escape("apel.example.org"),"hardware/machine/200/48/Dell2/33",
  escape("argus.example.org"),"hardware/machine/200/49/Ibm1/43",
  escape("bdii.example.org"),"hardware/machine/200/49/Hp1/30",
  escape("ce.example.org"),"hardware/machine/200/49/Ibm1/39",
  escape("cream.example.org"),"hardware/machine/200/49/Ibm1/42",
  escape("dcache-head.example.org"),"hardware/machine/200/49/Ibm1/40",
  escape("dcache-pool.example.org"),"hardware/machine/200/49/Ibm1/41",
  escape("hydra.example.org"),"hardware/machine/200/48/Dell2/32",
  escape("lfc.example.org"),"hardware/machine/200/48/Dell2/32",
  escape("nagios-master.example.org"),"hardware/machine/200/49/Hp1/30",
  escape("nagios-slave-A.example.org"),"hardware/machine/200/49/Hp1/30",
  escape("nagios-slave-B.example.org"),"hardware/machine/200/49/Hp1/30",
  escape("px.example.org"),"hardware/machine/200/48/Dell2/35",
  escape("rb.example.org"),"hardware/machine/200/48/Dell2/36",
  escape("se-classic.example.org"),"hardware/machine/200/48/Dell2/37",
  escape("se-dpm-disk.example.org"),"hardware/machine/200/48/Dell2/38",
  escape("se-dpm-disk2.example.org"),"hardware/machine/200/48/Dell2/39",
  escape("se-dpm-server.example.org"),"hardware/machine/200/48/Dell2/40",
  escape("topbdii.example.org"),"hardware/machine/200/48/Dell2/41",
  escape("ui.example.org"),"hardware/machine/200/49/Hp1/31",
  escape("wmslb.example.org"),"hardware/machine/200/49/Hp1/32",
  escape("wn.example.org"),"hardware/machine/200/49/Hp1/32",
  escape("wn2.example.org"),"hardware/machine/200/49/Hp1/33",
  escape("wn3.example.org"),"hardware/machine/200/49/Hp1/34",
  escape("xen-host.example.org"),"hardware/machine/200/49/Hp1/33",
  escape("xen-guest.example.org"),"hardware/machine/xen/base",
);

include {"site/xen/db"};