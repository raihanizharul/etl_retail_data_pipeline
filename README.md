# 🛠️ ETL Retail Data Pipeline

## 📌 Overview
![walmartecomm](images/walmartecomm.jpg)

Walmart is the biggest retail store in the United States. Just like others, they have been expanding their e-commerce part of the business. By the end of 2022, e-commerce represented a roaring $80 billion in sales, which is 13% of total sales of Walmart. One of the main factors that affects their sales is public holidays, like the Super Bowl, Labour Day, Thanksgiving, and Christmas. 

In this project, I have been tasked with creating a data pipeline for the analysis of supply and demand around the holidays, along with conducting a preliminary analysis of the data.

<br>

## 📝 Dataset

The project provided with two data sources: grocery sales and complementary data. The project have been provided with the `grocery_sales` table in `PostgreSQL` database with the following features:

### `grocery_sales`
| column         | data type  | description               |
| -------------- | ---------- | ------------------------- |
| `index`        | `integer`  | Unique ID of the row      |
| `Store_ID`     | `integer`  | Store number              |
| `Date`         | `datetime` | Week of sales             |
| `Weekly_Sales` | `float`    | Sales for the given store |

<br>

Also, the `extra_data.parquet` file that contains complementary data:

### `extra_data.parquet`
| column         | data type | description                                                    |
| -------------- | --------- | -------------------------------------------------------------- |
| `IsHoliday`    | `integer` | Whether the week contains a public holiday (1 if yes, 0 if no) |
| `Temperature`  | `float`   | Temperature on the day of sale                                 |
| `Fuel_Price`   | `float`   | Cost of fuel in the region                                     |
| `CPI`          | `float`   | Prevailing consumer price index                                |
| `Unemployment` | `float`   | Prevailing unemployment rate                                   |
| `MarkDown1`    | `float`   | Number of promotional markdowns                                |
| `MarkDown2`    | `float`   | Number of promotional markdowns                                |
| `MarkDown3`    | `float`   | Number of promotional markdowns                                |
| `MarkDown4`    | `float`   | Number of promotional markdowns                                |
| `Dept`         | `integer` | Department number in each store                                |
| `Size`         | `integer` | Size of the store                                              |
| `Type`         | `object`  | Type of the store, depending on store size                     |


## 🎯 Objectives
The task is to merge data sources and perform some data manipulations. The transformed DataFrame can then be stored as the `clean_data` variable containing the following columns:
- `"Store_ID"`
- `"Month"`
- `"Dept"`
- `"IsHoliday"`
- `"Weekly_Sales"`
- `"CPI"`
- `"Unemployment"`

After merging and cleaning the data, analyze monthly sales of Walmart and store the results of analysis as the `agg_data` variable that should look like:

|  Month | Weekly_Sales  | 
|---|---|
| 1.0  |  33174.178494 |
|  2.0 |  34333.326579 |
|  ... | ...  |  

Finally, save the `clean_data` and `agg_data` as the csv files.