---
title       : Stock Performance 
subtitle    : US Technology Large Caps
author      : Michael Laenen
job         : BI Architect
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Description

The Shiny App I wrote allows you to compare stocks performance. I've limited the
stock list to companies with Capitalisation > 10 Billions USD.

Figures are for the years 2012 to 2014.

---
## Details

Based on real stock price history (Adj Close) renormalized on a 100 basis to allow compariso in return.

---
## Example

Below a sample of the first 5 lines of the CSV file.


```
##   ï..Time.Year  Time.Date Ticker   AAPL CDW   CTRX FB GOOG  GOOGL   INTC
## 1         2012 2012-04-05     NA 100.00  NA 100.00 NA   NA 100.00 100.00
## 2         2012 2012-04-09     NA 100.40  NA  99.44 NA   NA  99.77  98.90
## 3         2012 2012-04-10     NA  99.17  NA  96.88 NA   NA  99.13  97.76
## 4         2012 2012-04-11     NA  98.81  NA  98.31 NA   NA 100.58  99.22
## 5         2012 2012-04-12     NA  98.27  NA  99.23 NA   NA 102.95 101.45
##     MSFT     MU   QCOM    STX   TECD    TXN    WDC
## 1 100.00 100.00 100.00 100.00 100.00 100.00 100.00
## 2  98.66  96.84  98.98 103.03  98.65  99.00  99.87
## 3  96.67  94.20  98.56  99.66  97.42  97.61  96.30
## 4  96.30  94.47  98.56 100.64  98.54  98.54  96.17
## 5  98.28  94.20 101.69 104.91 100.32 100.17  98.61
```

---
## Lessons learned

- Necessary to use reactive function when multiple inputs

- In the renderPlot function, the name of the dataframe must be followed by parentheses.

---
