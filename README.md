# DataAnalyst-ElevateLabs - task 1 : Objective:
To clean and standardize a raw dataset using Python (Pandas) by handling missing values, duplicates, inconsistent text formats, and incorrect data types.

Steps Taken in the Code:
Load the Data:

Loaded the Excel file and read data from the first worksheet into a DataFrame.

Rename Columns:

Standardized column headers:

All lowercase

Replaced spaces with underscores

Example: Order ID → order_id

Handle Missing Values:

Identified and removed rows that had any missing (null) values to ensure data completeness.

Remove Duplicates:

Checked for and removed any duplicate rows to avoid redundant or skewed analysis.

Standardize Text Formats:

Pizza Size:

Converted all size values to a consistent format (S, M, L)

E.g., "Medium", "medium" → "M"

Delivery Status:

Capitalized the first letter of each word (e.g., "delivered", "CANCELLED" → "Delivered", "Cancelled")

Convert Dates:

Converted order_date column to a consistent datetime format using pd.to_datetime.

This ensures proper date-based operations (e.g., filtering, sorting).

Fix Data Types:

Ensured quantity and price columns are numeric.

This prevents calculation issues or analysis errors.

Save the Cleaned Data:

Exported the cleaned dataset to a new Excel file named cleaned_pizza_dataset.xlsx.

