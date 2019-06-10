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
Now that we have a DTM and simple Word Cloud and frequency plots to visualize the most frequent words, we will proceed to more advanced visualizations to understand words that frequently combine together.


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
- The dendrogram shows how certain words are grouped together
- Since the clustering is based on the frequency distances, the cluster indicates which set of words are used together most frequently
- For example, “bought”, “soft”, “material” & “comfort” have been used together indicating that people who bought spoke about the softness and comfort attributes of the material


`@script`



---
## Insert title here...

```yaml
type: "FullSlide"
key: "2686e115d2"
```

`@part1`



`@script`



---
## Let's practice!

```yaml
type: "FinalSlide"
key: "eed53dd83f"
```

`@script`


