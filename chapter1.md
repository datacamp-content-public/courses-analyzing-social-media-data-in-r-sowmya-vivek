---
title: 'Chapter Title Here'
description: 'Chapter description goes here.'
free_preview: true
---

## Example coding exercise

```yaml
type: NormalExercise
key: 2bafef99a3
lang: r
xp: 100
skills: 1
```

This is an example exercise.

`@instructions`


`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}

```

`@solution`
```{r}

```

`@sct`
```{r}

```

---

## Insert exercise title here

```yaml
type: VideoExercise
key: dc909ab842
xp: 50
```

`@projector_key`
39c10b60df858b5cb1b3153613cac970

---

## Cluster Dendrograms and Word Association plots

```yaml
type: VideoExercise
key: 774d92a419
xp: 50
```

`@projector_key`
ff0a62232a78b17e63bdfdee751b599e

---

## Time Series Plots

```yaml
type: NormalExercise
key: 7a53b4247e
xp: 100
```

Time series data is used to analyze how data changes over time. Visualizing time series of tweets gives useful insights about how the number of tweets vary over time.

In this exercise, you will visualize how the following vary over different time intervals:

1. Tweets by a famous personality, Rihanna (rih_tweet)
2. Tweets on a specific topic, Artificial Intelligence (AI_tweet)

The library "rtweet" and datasets containing extracted tweets for the two use cases have been pre-loaded.

For Rihanna, you will create a dataframe containing frequency of tweets over time using `ts_data` function.
You will then plot the time series using `ts_plot` function, setting the intervals to monthly.

Finally, plot the time series for "AI_tweet" dataset using `ts_plot` and for hourly intervals.

`@instructions`
- Convert 'rih_tweet' into a time series data object using `ts_data` function.
- Create a Time Series plot using `ts_plot` function with interval set to `"months"`. 
- Create a Time Series plot for 'AI_tweet' using `ts_plot` with `"hours"` as time interval.

`@hint`
- Use `ts_data` to convert tweet data to a time series like data object.
- Use `ts_plot` to create the Time Series plots.
- The argument for time interval `"months"` or `"hours"` should be inside double quotes as shown here.

`@pre_exercise_code`
```{r}
# Load the library rtweet
library(rtweet)

# Load dataset with tweets on "Artificial Intelligence"
AI_tweet = readRDS("AI_api.rds")
```

`@sample_code`
```{r}
# Load dataset containing Rihanna's tweets
rih_tweet = readRDS("rihanna_namesearch.rds")

# Convert tweets data into time series-like data object
_______(rih_tweet)

# Plot tweets data over time - monthly
_______(rih_tweet, _______, col="blue")

# Plot tweets data for AI_tweet over time - hourly
_______(AI_tweet, _______, col="red")
```

`@solution`
```{r}
# Load dataset containing Rihanna's tweets
rih_tweet = readRDS("rihanna_namesearch.rds")

# Convert tweets data into time series-like data object
ts_data(rih_tweet)

# Plot tweets data over time - monthly
ts_plot(rih_tweet, "months", col="blue")

# Plot tweets data for AI_tweet over time - hourly
ts_plot(AI_tweet, "hours", col="red")
```

`@sct`
```{r}

```
