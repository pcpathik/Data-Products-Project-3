<style>
.small-code pre code {
  font-size: 1em;
}
.midcenter {
    position: fixed;
    top: 50%;
    left: 50%;
}

</style>

Reproducible Pitch
========================================================
author: Pathik Chamaria
date: 1 April, 2017
autosize: true

What I did?
========================================================
I have tried to create a R Shiny app which:

- calculates the sum of first N natural number
- displays how the sum grows with increase in N

App is available at
<https://pcpathik.shinyapps.io/sum_of_first_n_natural_number/>.


How I did?
========================================================
class: small-code

To achive an interactive and soomth experience have used R Shiny framework. Inupt for N, i.e, the the number of natural numbers to be summed is taken from user. Using the N a sequence is genrated which is summed and also cummulative sum is calculated for purpose of display. The code to acheive this calculation is as follows. In order to have a proper graph a restriction on  smallest size of N has been placed. It is limited to take smallest value as 5.


```r
N #Input greater than or equal to 5

first_N_natural_number <- seq(1:N)
sum_first_N_natural_number <- sum(first_N_natural_number)
cum_sum_first_N_natural_number <- cumsum(first_N_natural_number)
paste("Sum of the first ", N, " natural number is ", sum_first_N_natural_number)
plot(first_N_natural_number,cum_sum_first_N_natural_number, type = "l", main = "How the sum grows", xlab = "Number", ylab = "Sum")
```

Example
========================================================
class: small-code


```r
N <- 500 #Input
```



```
[1] "Sum of the first  500  natural number is  125250"
```

![plot of chunk unnamed-chunk-3](pitch-figure/unnamed-chunk-3-1.png)


========================================================
<div class="midcenter", style="margin-left:-100px;">
<h2>THANK YOU!!!</h2></div>
