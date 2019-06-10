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
- Clustering is a dimension reduction technique {{1}}
- Word clustering identifies word groups occurring together {{2}}
- Based on word distances {{3}}
- Cluster Dendrograms are useful for visualizing Word clusters {{4}}


`@script`
Clustering is a dimension reduction technique which is based on distance of observations from one another. Observations close to each other are grouped into the same cluster. This concept is used for grouping words based on word distances and creating clusters. Once the clusters are created, we use Cluster Dendrograms to visualize the word clusters and understand words that frequently occur together.


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
hc <- hclust(d = dist(dtm2, method = "euclidean"), 
		method = "complete")

#Plot cluster dendrogram
plot(hc)
```


`@script`
Let's understand the R coding. The first step is to treat the DTM for sparsity which removes empty cells in the DTM. However, we set a generous parameter value of 0.9 so that we capture the N-grams appearing less frequently in the DTM.
The next step is to build a hierarchical cluster based on object distances in the DTM. For our use case, we use Euclidean distances and the 'Complete' linkage method for distance calculation. There are other distances like Manhattan distance and linkages like 'Average' and 'Ward's' method that can applied too.
Finally, we plot a cluster dendrogram which is used for visualizing the cluster.


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
Let's interpret the dendrogram. 
The dendrogram shows words that are frequently appearing together. For example, words like bought, soft, material, and comfort are used together indicating that people who bought spoke about the softness and comfort attributes of the material


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
Word Association is a way of calculating the correlation between 2 words in a Document-Term Matrix or Term-Document Matrix. 
It is another way of identifying words used together frequently. 
Let’s check the correlation between various words and the word “fit” using Word Association plots.


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
Let's understand the R code for creating a Word Association plot.
The first step is to create an association vector for the word 'fit' in the DTM at a correlation threshold of 0.05 i.e. we are creating a correlation matrix for fit vs other words in the DTM where the correlation coefficient is higher than 0.05.
Next, we convert this vector into a dataframe and include the other words along with their correlation coefficient.
Finally, we plot a scatter plot using ggplot where y-axis has the word and x-axis has the corresponding correlation values.


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
The word “fit” has the highest association with “perfect”,  “size”, "loos", "well", and "usual".

Further text mining would help understand the positive and negative attributes of fit when occurring together with these words.


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
In this lesson, we have made use of two concepts to understand words that frequently occur together
The first one is using word distances / proximity, and thereby clustering to plot word sets that are close to each other
The second concept is using correlation between word pairs and mapping the correlations in a scatter plot to understand how word pairs are associated with each other.
Now its your turn to practice and apply the concepts learned in this lesson.


---
## Let's practice!

```yaml
type: "FinalSlide"
key: "eed53dd83f"
```

`@script`


