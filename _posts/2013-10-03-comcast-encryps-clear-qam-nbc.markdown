---
layout: post
title:  "Comcast Encrypts All Clear QAM"
---

As of Tuesday morning, all of my Comcast clear QAM channels have been scrambled.  The [FCC][fcc] site being affected by the government shutdown does not suggest that a formal complaint would be timely now. 

Unfortunately I am afraid that this is all perfectly legal, as the FCC relaxed the cable encryption prohibition about a year ago.  I have mirrored the [ruling][] as their site remains in a governmenty-shutdown state.  The essence of the rule change is that cable operators were now permitted to encrypt all digital basic channels under the premise that this arrangement allows for full remote activation of accounts from a cable providers control.  This arrangement would make it possible for a cable provider to wire every home without regard to whether the inhabitant subscribed.  

The best evidence to document the change in policy of Comcast here in Menlo Park is a comparison of tuner channel signal strengths and stream information as experienced by my [HDHomerun][HDHomerun]

The first reading is from July of this year, when I received all major networks: ABC,CBS,Fox,NBC as well as PBS in glorious HD.
{% highlight bash %}
SCANNING: 783000000 (us-irc:122, us-cable:122)
LOCK: qam256 (ss=100 snq=100 seq=100)
TSID: 0x2821
PROGRAM 1: 5.1 KPIX-DT
PROGRAM 2: 2.1 KTVU-HD
PROGRAM 3: 2.2 KTVU-SD
{% endhighlight %}
The second is from tonight, but the first time this occurred is probably on Tuesday morning.  I know this because the last thing I remember watching was the House vote on Monday night/Tuesday morning regarding caucausing with the Senate.  
{% highlight bash %}
SCANNING: 783000000 (us-irc:122, us-cable:122)
LOCK: qam256 (ss=94 snq=100 seq=100)
TSID: 0x2821
PROGRAM 1: 0 (encrypted)
PROGRAM 2: 0 (encrypted)
PROGRAM 3: 0 (encrypted)
{% endhighlight %}
Now, I actually cannot prove channel 122 is still CBS/FOX because the signal is now encrypted.  But I really can't watch any of the channels I used to.  

[fcc]:http://www.fcc.gov/shutdown-page.html
[ruling]:http://blog.davyrice.com/mirror/commission-relaxes-cable-encryption-prohibition.html
[HDHomerun]:http://www.silicondust.com/products/hdhomerun/atsc/
