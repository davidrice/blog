---
layout: post
title:  Let's Continue
date:   2014-05-26 09:37:43
---

I think therefore the kinks are worked out.

One of the best things about the Internet is routing.  When I watch baseball at home, Major League Baseball routes the packets containing the video stream to my home network.  The nearly unlimited MLB.tv Premium subscription costs slightly less than a dollar a day but provides access to all games across the league except those in your immediate local market.  It's a pretty good value especially when you consider the blackout can be circumvented by using Internet routing.

The basics of what needs to happen for this to work follow, starting with the TV.  The TV presents a list of available games currently being played.  Each game has a selection of broadcasts, one for each team.  When you select a broadcast a brief spinner works and a high-definition picture lights up.

The blackout rules kick when selecting a team that plays in your local area.  In my case, the Giants and A's don't work unless you route around the problem.  The request to show the Giants broadcast arrives at MLB's servers with an IP address that resides within the blackout zone.  What happens next is simple, another route for the traffic will be setup and used to identify outside of my local blackout zone.  

To accomplish this task, you can use [OpenVPN][openvpn], which creates a secure tunnel using public-key encryption.  [Installing OpenVPN on a DigitalOcean][digitalocean] costs $5/month for the smallest droplet which allows 1TB of network. Once you have made certificates for the server and keys for the clients, you can setup your router to use the VPN Internet connection.  [OpenWRT made this easy] (http://wiki.openwrt.org/doc/howto/vpn.client.openvpn.tap); I followed the basic samples more or less, but modified to fit my droplet in New York City.

Now, simply starting and stopping the openvpn service:

{% highlight bash %}
# /etc/init.d/openvpn start 

# /etc/init.d/openvpn stop
{% endhighlight %}

When the openvpn client is running, my request to MLB for the Giants game routes to New York first.  The MLB servers authorize my session and the game lights the screen without objection.  The VPN tunnel can be torn down after the authorization and the game will continue playing. 

[openvpn]:http://en.wikipedia.org/wiki/OpenVPN
[digitalocean]:https://www.digitalocean.com/community/articles/how-to-setup-and-configure-an-openvpn-server-on-centos-6
