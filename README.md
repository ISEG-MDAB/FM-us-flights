# Forcasting Methods

## Project - US Flights Data Set Analysis - README

### Group:

   - André Viana - l54543 - andreviana@aln.iseg.ulisboa.pt
   - Gonçalo Duarte - l48505 - goncaloduarte@aln.iseg.ulisboa.pt
   - José Cabral - l54997 - l54997@aln.iseg.ulisboa.pt
<br>

Masters Data Analytics for Business - ISEG - University of Lisbon

May 2021

### Summary

Nowadays, as easy as it is for any of us to travel from one city to another, one country to another, the flight industry is expected to be extremely profitable and resourceful. With hundreads of thousands of registered flights per day, there is a big volume of data possible to be analized. The year of 2020 brought change to our lives. Being hit by a pandemic changes the way all of us think and look at the world around us. Do we feel safe to travel in the next months? Can we even travel? Some questions arose last year and for many of them there are no answers yet. What we do know is that the way we travel has changed. That impacts numbers of the aviation industry. Despite being one single country, there are more than five thousand public airports across the USA. Some of these airports have tremendous traffic - which provides a huge amount of data possible to be analyzed. Develop analysis on flight data means providing - or trying to provide - answers to many questions, such as: how much did the number of flights decreased from 2019 to 2020 due to COVID 19? Is there a seasonality regarding the number of flights? Do cancellation rates follow a trend? How can we predict the number of flights on the next months based on past data? We hope to explore this questions and be able to provide meaningful answers.


### Data Description

To develop this project, we worked with <b> Bureau of Transportations Statistics data sets </b>, regarding flights from 2010 to 2020:

Data set containing a row per flight and columns:

<i>FL_DATE</i> = Flight Date (yyyy-mm-dd)  
<i>ORIGIN_AIRPORT_ID</i> = Origin Airport ID. An identification number assigned by US DOT to identify a unique airport.     
<i>CANCELLED</i> = Cancelled Flight Indicator (1=Yes)   

This dataset is availabe on the folder Zip_Data, and to be used it needs to be unzipped into the Data folder

## Project Description


On the folder, you will find <b>4 documents: </b> 
  

  - <b><i>README.md</i></b> : this document describing all data sets used and what was developed in the project;
  
  
  - <b><i>data_preparation.R</i></b> : a R script to load all csv files and aggregate the data by month and airport for further on the analysis.


  - <b><i>report.Rmd</i></b> : a Rmarkdown where we analyse the data. (To run this Rmd set the directory of RStudio to where this file is saved.)

   
  - <b><i>report.pdf</i></b> : a PDF file with the Rmarkdown output.
