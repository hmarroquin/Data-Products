---
title       : Data Science - Data Products Assignment
subtitle    : Dog to Human Years
author      : hmarroquin
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Summary

The Dog to Human Years Shiny app was devloped exclusively for the Coursera Data Science Specialization, Data Products. It showcases the quick web development capabilities that R supports.

ShinyApps are an incteractive platform to distribute and interface with the end users.  The Data solution is all developed in R and advocates for a simplistic User Interface which allows for quick turn around solutions.

While the app presented here is simple and straight forward, the complexity of the statistical model behind it can be much more complex. The idea being that users can interact with models built by data scientists. 





--- .class #id 

## Background

For the first two years, a dog year is equal to 10.5 human years. After that, each dog year equals 4 human years. This calculation is based on studies that indicate dogs, except maybe larger breeds, develop more quickly in the first two years of life.

_Further Reading:_

[https://en.wikipedia.org/wiki/Aging_in_dogs](https://en.wikipedia.org/wiki/Aging_in_dogs)


---

## Calculation

Here's a quick look at the calculation engine behind the app. It performs a step calculation for dogs under 3 years old and upscales for Dogs over 2 Years old, outputting a human year equivalency.


```r
dog2human <- function(Dog)(
      if (Dog < 3) {
           Dog*10.5
      }else {
           21 + (Dog - 2)*4
      }
)
dog2human(4)
```

```
## [1] 29
```

---

## Woof

Take care of your pups, they grow all too quickly!

<div style='text-align: center;'>
    <img height='500' src='pup.jpg' />
</div>



