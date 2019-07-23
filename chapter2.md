---
title: 'Chapter 2 - Analysis of Twitter Data '
description: ""
---

## Time Series Plots

```yaml
type: NormalExercise
key: 1d2cf833e0
xp: 100
```

Time series data is used to analyze how data changes over time. You will use time series plots to visualize the popularity/relevance of a topic or personality based on frequency of tweets over time. 

In this exercise, you will create time series plots for:

1. Tweets by a famous personality, Rihanna (`rih_tweet`)
2. Tweets on a specific topic, Artificial Intelligence (`AI_tweet`)

The package `rtweet` and datasets containing extracted tweets for the two use cases have been pre-loaded. You will be using the functions `ts_data` and `ts_plot` in this exercise.

For Rihanna you will identify if there is a specific month when she has tweeted more. For tweets on AI, you will visualize how many people have tweeted on AI in the last few hours.



`@instructions`
- For `rih_tweet`, create a time series data object containing frequency of tweets over time using `ts_data` function.
- Use `ts_plot` function to create a time series plot, setting the intervals to monthly.
- Plot the time series for `AI_tweet` dataset for hourly intervals.

`@hint`
- Did you insert the argument for time interval within double quotes?

`@pre_exercise_code`
```{r}
# Load the library rtweet
library(rtweet)

# Load dataset with tweets by "Rihanna"
rih_tweet = readRDS("https://assets.datacamp.com/production/repositories/5093/datasets/313935620d786b6f3acb93633e4cfb804fb92d01/rihanna_namesearch.rds")

# Load dataset with tweets on "Artificial Intelligence"
AI_tweet = readRDS("https://assets.datacamp.com/production/repositories/5093/datasets/5afff3364029c063d2bbc9f78eb181193703856f/AI_api.rds")
```

`@sample_code`
```{r}
# Convert rih_tweet data into time series data object
_______(rih_tweet)

# Plot tweets data over time - monthly
_______(rih_tweet, _______, col="blue")

# Plot tweets data for AI_tweet over time - hourly
_______(AI_tweet, _______, col="red")
```

`@solution`
```{r}
# Convert rih_tweet data into time series data object
ts_data(rih_tweet)

# Plot tweets data over time - monthly
ts_plot(rih_tweet, "months", col="blue")

# Plot tweets data for AI_tweet over time - hourly
ts_plot(AI_tweet, "hours", col="red")
```

`@sct`
```{r}
success_msg(Congratulations! You have learnt how time series plots of tweets give a quick visualisation of the frequency of tweets over time. Head over to the next chapter to explore tweet text & identify popular topics, praise = FALSE)

```
