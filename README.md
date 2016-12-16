# Facebook-Engagement-with-Hierarchical-Poisson-Factorization
Using the "hgaprec" software developed by 

Prem Gopalan
pgopalan@cs.princeton.edu

Jake Hofman
jhofman@gmail.com

David Blei
blei@cs.princeton.edu

Software can be found: https://github.com/premgopalan/hgaprec

to fit a Hierarchical Poisson Factorization model to a matrix of Facebook engagement counts.

Under the directory, folders:
"Raw Data" : 
  Data directly scraped from 5 Facebook pages of 4 different Sports products/service accounts (Nike, Adidas, Adidas Original, Puma, Under Armour) using the method provided by the below tutorial:
http://nocodewebscraping.com/how-to-extract-data-from-facebook-page-competitor-analysis/

"Engagement Matrix" :
  Cleaned and processed data in matrix format with Column indexing individual Facebook posts and Row for Different types of engagement (i.e. users reactions to the post - Likes, Shares, Emotions (the new feature introduced globally in February, 2016), and Comments.
  
"run":
  Three required datasets as input for "hgaprec". Each file contains the tuples <post, reaction, counts>.
