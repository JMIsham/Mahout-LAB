# Mahout-LAB
This is an assignment done for my master's for the module **Big Data Analytics Technologies**. The purpose is to build a recommendation system using AWS EMR and Mahout

## Introduction
### Mahout 
Apache Mahout ships with most Hadoop distributions including Apache Bigtop and EMR. Mahout is a machine-learning library with tools for clustering, classification, and several types of recommenders, including tools to calculate most-similar items or build item recommendations for users. Mahout employs the Hadoop framework to distribute calculations across a cluster, and now includes additional work distribution methods, including Spark, a computing framework originating in UC Berkeley’s AMPLab that is now an Apache project.

Mahout saw its first bug filed in January 2008, and from there has seen 1,700 Jira tickets filed, with 54 open at this writing. Refining and improving the code and documentation requires a community of contributors and users; the project released a 0.10 version April 11, 2015 which prominently featured a new math environment code-named Mahout-Samsara.

### Recommenders
Most people encounter the effect of a recommender system on a website where the recommender’s predictions appear in a section of a web page. These recommendations help the site visitor find products to buy, new music to listen to, movies or television shows to watch, colleagues to hire, or potential mates to pursue.

The techniques for building recommenders have evolved since the early 1990s when the GroupLens research team built the USENET article recommender. The raw material has also evolved: in addition to news articles, there is a larger volume of online activity including clickstreams of users who follow links on websites; explicit “likes” and profile views; time spent perusing items or people; listening to music; and watching videos.

These advancements provide hooks into user behavior that help us determine how to recommend things to people. In the USENET example, users scan lists of articles for author and subject, click through, read, and close articles. In an online retail web site, shoppers search for products, browse product pages, click on photos to enlarge them, read reviews, and add products to a shopping cart. On a streaming music site, music consumers search for an artist or album, play tracks, fast-forward through tracks, and add the artist to their favorites, Streaming video sites work in a similar way. On a social networking site for professional or personal contacts, users search for and interact with other people. Each example includes a user interacting with some type of item in several ways.

## Demo
- Create an emr cluster on AWS
- SSH in to the server
- clone the repo 
- run the script `./run.sh`

## Auther 
**Isham Mohamed** - *Initial Version*

## References
https://aws.amazon.com/blogs/big-data/building-a-recommender-with-apache-mahout-on-amazon-elastic-mapreduce-emr/
