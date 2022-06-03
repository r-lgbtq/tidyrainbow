

# The Movie Database Documentation

curated by [Cara Cuiule (She/Her)](https://github.com/cacalc/tidyRainbowScratch)

Disclaimer: This product uses the TMDB API but is not endorsed or certified by TMDB.

[Website](https://www.themoviedb.org/)

[API Documentation](https://developers.themoviedb.org/)

## About the Data

From the [website](https://www.themoviedb.org/about): 
> The Movie Database (TMDB) is a community built movie and TV database. Every piece of data has been added by our amazing community dating back to 2008. TMDb's strong international focus and breadth of data is largely unmatched and something we're incredibly proud of. Put simply, we live and breathe community and that's precisely what makes us different.

The data is pulled from the TMDB API using LGBT+ keywords, which then returned keywords used in the database. Most keywords were used for the final query, but a few were discarded due to not being relevant (e.g. - 'gender differences').

The keyword array is as follows: ['lgbt', 'gay', 'lesbian','transgender','bisexual','intersex','queer','genderqueer','non-binary','gender', 'asexual']

## Data Dictionary

| variable          | class   | description                         |
| :---------------- | :------ | :---------------------------------- |
| id                | integer | unique ID                           |
| title             | string  | title of record in English(?)       |
| original_title    | string  | non-English characters              |
| original_language | string  | language of the record              |
| overview          | string  | description of the record           |
| release_date      | string  | release date of movie               |
| popularity        | number  | popularity rating                   |
| vote_average      | number  | average rating                      |
| vote_count        | integer | the number of votes                 |
| adult             | boolean | Boolean to indicate an adult movie. |
| video             | boolean | Boolean to indicate video           |
| genre_ids         | number  | an array of integers                |


