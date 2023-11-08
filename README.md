# ull-vpn-bundle
Simple Bash script that automates the installation, connection and disconnection of the ULL VPN service through IPSec on Linux.

## Description
The **ull-vpn-bundle** repository was created by Pablo Domenico Goya Amato [(domenico.goya.38@ull.edu.es)](mailto:domenico.goya.38@ull.edu.es) so that the users that might experience problems with the VPN service
of the University of La Laguna (either for the installation, the connection or the disconnection) could simply run some automatized Bash scripts to complete the basic tasks.

## Basic introduction
The ULL VPN service can be accesed from Windows, iOS, Linux and Android, but we will be focusing on the Linux version. As we can see in the _VPN Client Configuration Options_[[2]](#2) table,
we have the following options:

|Operative System|GlobalProtect|IPSec|
|---|---|---|
|Windows 10|Yes|No|
|Ubuntu 18.04 & 20.04|No|Yes|
|Android|Yes|Yes|

The method for accessing the VPN through Linux systems that we will be using is the **client for Cisco VPN3000 Concentrator, IOS and PIX**[[2]](#2): *vpn* which will be installed with the script.
In our case (using Linux) we will be using the IPSec standard for the connection since it is the only one available. So, to define how the IPSec standard works, we have the following definition:

> [...] IPSec adds encryption and authentication to make the protocol more secure. For example, IPSec encrypts data at the source and decrypts it at its destination. It also authenticates the origin of the data. [...][[3]](#3).

## Installation
If you **ONLY** want to install the service, please refer to the ***only-install*** folder [[Link]](https://github.com/domenicogoya/ull-vpn-bundle/only-install).

In order to install the VPN service we will have to execute the **install-vpn.sh** file with **Super User Priviledges _(sudo)_** using the following command (make sure to be inside the cloned folder):

``sudo bash install-vpn.sh``

It will ask you for your machine password if it is your first time using _sudo_ in that terminal session. After that, press enter and let the installation begin by itself.<br>
Once the installation is completed, the user will be asked if a storage of the VPN access credentials would be desired. Then, if the user decides to save the credentials, a prompt
asking if an inmediate VPN connection would be desired will appear. Lastly, the installation and the optinal scripts would have been executed and the process will be ended.<br>

If any errors ocurred, feel free to open a new issue in the ***Issues*** section of the repository. __Please make sure that there is not another issue similar to yours before creating a new one
so all the same problems can be solved at once.__

## Usage
To establish a connection with the VPN, execute the ***connect-vpn.sh*** file with **Super User Priviledges _(sudo)_** using the following command (make sure to be inside the cloned folder):

``sudo bash connect-vpn.sh``

Once this is done, the VPN will be started and the user will be able to access the internal network.<br>

To disconnect the VPN, execute the ***disconnect-vpn.sh*** file with **Super User Priviledges _(sudo)_** using the following command (make sure to be inside the cloned folder):

``sudo bash disconnect-vpn.sh``

Once this is done, the VPN will be disconnected <br>

## Disclaimer
All the commands that are inside the scripts and the information given here were extracted from the *University of La Laguna VPN Guide (only in Spanish)* [[1]](#1) and some Google pages (see ref. [[2]](#2)). 
Therefore I am not the author of this information and my only goal is to share and make easier the access to it.

## Sources
<a id="1">[1]</a>
Servicio TIC de la Universidad de La Laguna. [(2022)](https://docs.google.com/document/d/1xhSRVqo6y5HYtQQtBemLEwDG6a_yjGlzrxjwuYxIQAk/edit#heading=h.gjdgxs).
Servicio de Red Privada Virtual.
Guía de configuración clientes VPN. _(Spanish)_<br>
<a id="2">[2]</a>
die.net.
vpnc(8) - Linux man page. [[Link]](https://linux.die.net/man/8/vpnc). _(English)_<br>
<a id="3">[3]</a>
AWS Amazon.
¿Qué es IPsec?. [[Link]](https://aws.amazon.com/es/what-is/ipsec/). _(Spanish)_<br>
<a id="4">[4]</a>
[[1]](#1). Page 3.
