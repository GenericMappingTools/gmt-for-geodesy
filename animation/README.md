# GMT Animations

Resources for the GMT animation session:

**Instructor:**
[Paul Wessel](http://www.soest.hawaii.edu/wessel/)

**Resources**

* My Google Slides on [GMT animation](https://docs.google.com/presentation/d/14asz0WH1c5gKj04ap6SmVSaH6SWY1eI49iKgofd3n7Y/edit?usp=sharing)
* The [GMT YouTube](https://www.youtube.com/c/TheGenericMappingTools) channel

**Tasks**

* Understand GMT's approach to making animations
* Explore the movie module
* Explore the events module
* Make a few simple movies

**Common Problems**:

* Your PATH does not contain "." so you must type ./yourscript.sh to run your script.
* You skipped making just a master frame and is lost in movie errors.
* You asked for too many frames at too high resolution and it is taking too long.

Note: You can clean up the modern environment with

```
gmt clear sessions
```

**Products**

This session may build one or more scripts.  We are doing this together "live", but if you need to
go back and check you can examine my scripts here.  We recommend you work through the course
with us first before you open our scripts - they are there to help you later.

1. Our master frame from the spinning Earth script:

<img src="earth.png" width="60%">

2. Our final spinning Earth movie (the MP4 is full 360 degrees)

![`gmt-for-geodesy/animation/earth.mp4`](earth.gif)

3. Our final earthquake movie master frame:

<img src="quakes.png" width="60%">

4. Our final earthquake movie

![`gmt-for-geodesy/animation/quakes.mp4`](quakes.gif)
