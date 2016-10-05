# incognito

The goal is to avoid putting tape on your isight cameras and headphone jacks ala [Mark Zuckerberg](http://fortune.com/2016/06/22/mark-zuckerberg-facebook-tape/)

The 'incognito' script is intended to run every minute via cron, and disable your mic, speakers and camera. No more tape. Yay!

If you want to temporarily disable 'incognito' open a terminal and run the 'openly' script and everything works as normal.

NOTE: 'incognito' only works if your root account is not compromised. If a hacker has your root password, then the only way to prevent unauthorized pictures being taken is by physically putting a piece of tape on the camera.

## Install

```
$ curl -sSL https://raw.github.com/roubles/incognito/master/webinstall.sh | bash
```

## Run

```
$ sudo crontab -e
```

Add the following line:
```
*/1 * * * * /usr/local/bin/incognito
```

Now, every minute the computer will disable your mic, speakers and camera. To disable this, they will need root access.

## Disable incognito

If you want to disable incognito, pop open a terminal and run 'openly' (as root). Only root can enable the camera, mic and speakers.

```
$ sudo openly
Password:
Disabling incognito.
Press any key to go incognito again.
```

## Uninstall

```
$ curl -sSL https://raw.github.com/roubles/incognito/master/webuninstall.sh | bash
```
