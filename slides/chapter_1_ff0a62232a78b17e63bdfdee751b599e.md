---
title: Insert title here
key: ff0a62232a78b17e63bdfdee751b599e

---
## Cluster Dendrograms and Word Association plots

```yaml
type: "TitleSlide"
key: "10665cc1e2"
```

`@lower_third`

name: Sowmya Vivek
title: Data Science Coach


`@script`
In the previous lesson, we learned how to build a Word Cloud and frequency plot to visualize most frequent words. In this lesson, we will proceed to more advanced visualizations to understand words that frequently occur together.


---
## Cluster Dendrograms

```yaml
type: "FullSlide"
key: "278bb36cff"
```

`@part1`
- Cluster Dendrograms are useful for visualizing Word clusters {{1}}
- Word clustering identifies word groups occurring together {{2}}
- Based on word distances {{3}}
- Groups words into related clusters {{4}}
- Dimension reduction technique {{5}}


`@script`



---
## Coding Cluster Dendrograms

```yaml
type: "FullSlide"
key: "990a34c47b"
```

`@part1`
```
library(tm) 
#Treat DTM for sparse terms
dtm2 <- removeSparseTerms(dtm, sparse = 0.9)

#Build hierarchical cluster
hc <- hclust(d = dist(dtm2, method = "euclidean"), method = "complete")

#Plot cluster dendrogram
plot(hc)
```


`@script`



---
## Cluster Dendrogram - Interpretation

```yaml
type: "FullSlide"
key: "8098dba05a"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/5093/datasets/c5de85a6e4d3ab839a1dd8c12dd72d74fb9e70c2/clusterden.png)
- Shows words that are frequently grouped together
- “bought”, “soft”, “material” & “comfort” used together


`@script`



---
## Word Association Plot

```yaml
type: "FullSlide"
key: "2686e115d2"
```

`@part1`
- Calculates correlation between 2 words in a DTM {{1}}
- Another way of identifying words used together frequently {{2}}
- Let's check correlation between various words and the word “fit” {{3}}


`@script`



---
## Coding Word Association Plot

```yaml
type: "FullSlide"
key: "6850d39775"
```

`@part1`
```
#Create associations
associations <- findAssocs(dtm, "fit", 0.05)

#Create associations_df and choose relevant columns
associations_df <- list_vect2df(associations)[, 2:3]

#Plot the associations_df values ggplot(associations_df, aes(y = associations_df[, 1])) + 
geom_point(aes(x = associations_df[, 2]), 
data = associations_df, size = 3) +
ggtitle("Word Associations to 'fit'") +
theme_gdocs() +
theme(axis.text.y = element_text(size=10))
```


`@script`



---
## Word Association Plot - Interpretation

```yaml
type: "FullSlide"
key: "d0ef2b8a6c"
```

`@part1`
![word_assoc.png](https://assets.datacamp.com/production/repositories/5093/datasets/db3d0e40b7378ac820a15ac0f606bc6361a177d5/word_assoc.png)
- “fit” - most associated with “perfect”,“size”, “loos”


`@script`



---
## Summary

```yaml
type: "FullSlide"
key: "9ebecb765b"
```

`@part1`
Concepts to understand words that frequently occur together
- Word distances / proximity & clustering to plot word sets that are close to each other (cluster dendrogram) {{1}}
- Correlation between word pairs and mapping the correlations in a scatter plot (word association plot) {{2}}


`@script`



---
## Let's practice!

```yaml
type: "FinalSlide"
key: "eed53dd83f"
```

`@script`


