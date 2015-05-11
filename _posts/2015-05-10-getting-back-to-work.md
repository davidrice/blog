---
layout: post
title:  "Getting Back to Work"
date:   2015-05-10 16:43:10
categories: update
---

There has always been more interesting projects in my mind than time to do them.  Frequently I catch myself falling into the trap of disappointing myself by not pursuing these opportunities.  Although I have probably never finished a project the way my mind has conceived it, I never experience a pang of regret for spending time spent on one of my hair-brained schemes.

I have noticed, after a great amount of time passing, where improvements have arrived.  And similarly, I have noticed atrophies in areas neglected.  Most especially, my writing in 2015 frightens me.  My attention to read and write seems compromised.  My willingness to post without proof-reading or reflection seems related to the hyper-attention-deficit disorder pervading the culture.  

I will not be blaming Twitter or any specific tech trend, but I suspect there is probably something there.  Instead, I will speak towards my newest endeavors, ideas and distractions.

I am hoping to build a sophisticated enough application using docker and circleci to build, test and deploy my code.  Essentially, I am trying to figure out how to best approximate a professional software application, fully cognizant that I get paid to do this, in my day job, but probably cannot pull it off privately.  
Somewhat embarrassed, I can rationalize this.  I work for a large-company, with many teams.  My core competancy is not supposed to be duplicate of existing solutions.  But at the same time, it disapppoints me knowing my actual practices are humbled in comparison.  With almost certainly all challenges, I would bet it will not be as hard as it seems.  When finished, we will all look back on this with light-hearted disdain.

Without further ado, here is the plan, roughly.

I want a multi-tiered application with at least the following components.
1.  A node javascript presentation layer, using React.
2.  A redis caching layer, for interesting data
3.  A mysql layer for persisting application data and light analytics
4.  A reverse proxy, probably Trafficserver, perhaps Nginx
5.  A backend API layer, featuring golang

The plan is to have each of these layers running in its own docker container.  I want to expose services between adjacent layers, but the Trafficserver container should not be able to access redis or mysql.  Also, I want to swap out a layer with an equivalent but fundamentally different service.  For instance, after things are running, I want to see how I could switch to PostgreSQL without causing calamity.

All of these layers will be built from CircleCI jobs.  The containers will be deployed automatically.  All I will do at this point is commit code and the app should come to life.

I need to find a dataset that is both interesting and free to use.  I wanted to do a car make, mode and engine one, but it looks like that it proprietary.

Here goes...
