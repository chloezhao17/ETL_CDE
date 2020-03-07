# ETL_CDE

We will be exploring two datasets: Google Places API and Walk Score API, to determine the walkability around Whole Foods vs Kroger stores in Atlanta.

## Extract

- Sources:
  - Google Places API
    - Inputs: search query containing (Whole Foods in Georgia), search query containing (Kroger in Georgia), apikey
    - Outputs: name (string), address (string), latitude (float), longitude (float)
    - Format: JSON data
  - Walk Score API
    - Inputs: format, address, latitude, longitude, apikey, bike (if we wanted bike score data)
    - Outputs: walkscore (integer), ws description (string), bike (integer), b description (string), address (string)
    - Format: JSON data

## Transform

- After saving the extracted data into dataframes, we dropped Whole Foods distribution centers as they are not grocery stores.
- We consolidated the Whole Foods and Kroger dataframes into one dataframe.
- We reset the indexes because they were not unique (as a result of the append).
- We looped through the new dataframe to call the Walk Score API and stored the results in a new dataframe.

## Load

- We chose a relational database (PostgreSQL) because the two datasets were directly related to each other (by address) and could be stored in a tabular format.
- We created a database called 'stores'.
- We created a schema to create two tables called 'location' and 'scores'.
- We pushed the data to the respective tables.
  - Google Places data was loaded to the 'location' table.
  - Walk Score data was loaded to the 'scores' table.
- As a test, we joined ran a SQL query to join both tables on the address column.
