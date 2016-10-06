# incognito

Recently the [FBI director came out in support of taping your webcams](http://www.telegraph.co.uk/technology/2016/09/15/put-tape-over-your-webcam-fbi-director-warns/). In a picture from facebook HQ we also saw [Mark Zuckerberg's webcam and mic are covered.](http://fortune.com/2016/06/22/mark-zuckerberg-facebook-tape/)

This script, incognito, intends to make it more difficult for a hacker to get to your webcam (isight) and mic of your mac, by removing (actually, just moving) the camera drivers and zeroing the input volume on your mics. It is literally like ten lines in a bash script.

As an added bonus it also zeros the output volume on your speakers - this is just done to primarily to prevent your computer from broadcasting any embarassing music stations you may listen to.

Hosever, incognito is not full proof. A hacker with root access could just put all the drivers back in place and voila he has control. It is just an extra layer of obfuscation - security through obscurity. In the security business, it is well known that security through obscurity should never be your only security mechanism. So, you should probably still tape your webcams. 'incognito' can help if the tape falls off.

The 'incognito' script is intended to run every minute via cron, and disable your mic, speakers and camera. It is dependent on the install of [isight-cli](https://github.com/jessedoyle/isight-cli), which is a command line tool to disable isight.

If you want to temporarily disable 'incognito' open a terminal , just run the accompanying 'openly' script and everything works as normal.

## Install

First install [isight-cli](https://github.com/jessedoyle/isight-cli)

Next, install incognito:
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

Now, every minute the computer will disable your mic, speakers and camera. To disable this, you will need root access.

## Disable incognito

If you want to disable incognito, to play music or facetime, pop open a terminal and run 'openly' (as root). Only root can enable the camera, mic and speakers.

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
