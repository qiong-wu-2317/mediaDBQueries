# mediaDBQueries
Assignment 4 Submission by Qiong Wu

## How to run it

Download MediaDB database from https://northeastern.instructure.com/courses/196655/files/28777296/download?wrap=1

Initialize the database by running

```
sqlite3 MediaDB.db
```

## Queries

* Query 1: What are the last names and emails of all customer who made purchased in the store?

```
.read query1.sql
```


* Query 2: What are the names of each album and the artist who created it?

```
.read query2.sql
```


* Query 3:  What are the total number of unique customers for each state, ordered alphabetically by state?

```
.read query3.sql
```


* Query 4:  Which states have more than 10 unique customers?

```
.read query4.sql
```


* Query 5: What are the names of the artists who made an album containing the substring "symphony" in the album title?

```
.read query5.sql
```


* Query 6: What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?

```
.read query6.sql
```


* Query 7:  How many artists published at least 10 MPEG tracks?

```
.read query7.sql
```


* Query 8:  What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals. 

```
.read query8.sql
```

* Query 9:  Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean
query lists each customer's full name, their the total cost of purchases, time of first purchase and ranks them based on total cost and the time of their first purchase

```
.read query9.sql
```