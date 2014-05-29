---
layout: post
title:  "Jeopardy and Tesseract"
date:   2014-05-28 23:17:00
---

The most fundamental step in answering the clues on my favorite game show is understanding the answer.  

For a computer to decipher the clues it needs to recognize letters in the English language.  Detecting the text accurately of clues, categories and other text on the Jeopardy can easily been done using [Tesseract][tessearact].

[Generating thumbnails can be accomplished][thumbnail_guide] easily using ffmpeg.
{% highlight bash %}
$ ffmpeg -i jeopardy.mpg -f image2 -vf fps=fps=1 %d.png
{% endhighlight %}

Once the images have been generated, tesseract has a straight forward syntax.

{% highlight bash %}
$ tessearact 1.png output
{% endhighlight %}

After running the images from jeopardy through tesseract, a very large number of clues, categories and other texts are detected correctly.  

Here are some sample images and their recognized english characters.

<img src="/imgs/jeopardy/10.png" alt="Barbara Walters" width=100% />
BARBARA 
WALTERS

<img src="/imgs/jeopardy/15.png" alt="Movies Inspired By Literature" width=100% />
MOVIES
INSPIRED

BY LITERATURE

<img src="/imgs/jeopardy/18.png" alt="Lucky 13" width=100% />
LUCKY 13

<img src="/imgs/jeopardy/21.png" alt="Those Are My Initials TOo" width=100% />
THOSE ARE MY
INITIALS, T00

<img src="/imgs/jeopardy/23.png" alt="The Pentagon" width=100% />
THE
PENTAGON

 
<img src="/imgs/jeopardy/25.png" alt="Str8 Talk" width=100% />
"STB"8 TALK

Of the first round categories, tessearact only slightly misreads the last one.

The second round went similarly.

<img src="/imgs/jeopardy/755.png" alt="Plastic" width=100% />
PLASTIC
<img src="/imgs/jeopardy/758.png" alt="Visa" width=100% />
VISA
<img src="/imgs/jeopardy/760.png" alt="Master Card" width=100% />
MASTER CARD
<img src="/imgs/jeopardy/762.png" alt="American Express" width=100% />
AMERICAN
EXPRESS
<img src="/imgs/jeopardy/767.png" alt="Diners Club" width=100% />
DINEBS CLUB

Only a small flub on a single category prevented a perfect score.  

The final clue on Jeopardy was detected very cleanly as well.

<img src="/imgs/jeopardy/1502.png" alt="Final Clue" width=100% />
THIS PLAY'S TITLE
COMES FROM

THE NAME OF A GREEK
KING SAID TO HAVE

CARVED A STATUE OF
A WOMAN 8 FALLEN

IN LOVE WITH IT


Only a mistake of a single character.

[thumbnail_guide]:https://trac.ffmpeg.org/wiki/Create%20a%20thumbnail%20image%20every%20X%20seconds%20of%20the%20video
[tessearact]:http://en.wikipedia.org/wiki/Tesseract_(software)
