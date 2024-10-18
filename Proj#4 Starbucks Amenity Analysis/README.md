# Starbucks Amenities and Income Demographics in California
## by Colin Zhou
**Date last Updated: 10/18/2024**
![Starbucks Amenities and Income Demographics in California](https://private-user-images.githubusercontent.com/125409693/377962332-6f326163-f099-4309-af0c-c9e79a51f413.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjkyNzM5MjMsIm5iZiI6MTcyOTI3MzYyMywicGF0aCI6Ii8xMjU0MDk2OTMvMzc3OTYyMzMyLTZmMzI2MTYzLWYwOTktNDMwOS1hZjBjLWM5ZTc5YTUxZjQxMy5qcGc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQxMDE4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MTAxOFQxNzQ3MDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1iNmQyNDg4YjllNzgwYWI0YTFmNDhkMWQ2MjE5ZjNkYjk0ZTVmYTI1M2VkMjgzYTdhYzM0ODE4MzcxNjg4NWUwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.AOgswB_xABriqfqb-2aRYVa5imKhBXKAP6SiP8LI-1I)

This project investigates whether Starbucks' amenity offerings, such as Free WiFi, Fizzio Handcrafted Sodas, Drive-Thrus, and Digital Rewards, are influenced by the surrounding income demographics in California. The analysis explores whether these amenities are tailored to the income levels of each store’s clientele.


## Problem Statement:

The study aims to determine if Starbucks strategically adjusts its amenity offerings based on the income demographics of the areas where its stores are located. By analyzing different amenities across various income brackets, this research assesses how Starbucks customizes its customer experience.

## Data Sources
The study utilizes the following data:

- **Starbucks store-level data**: Availability of specific amenities.
- **City-level data**: Population and average income statistics.
- **County-level data**: Broader demographic information.

The data was sourced from [Kaggle](https://www.kaggle.com/datasets/mexwell/starbucks-worldwide-and-california) and segmented based on city-level income into three brackets: Low, Medium, and High.

## Research Methodology
1. **Data Preprocessing**: Handling missing values and encoding categorical variables.
2. **Exploratory Data Analysis (EDA)**: Analyzing the distribution of amenities across income brackets using visualizations.
3. **Linear Probability Models**: Assessing the impact of income on amenity provision while controlling for population size and other variables.
4. **Statistical Validation**: The study’s findings were validated with appropriate statistical measures to ensure reliability.

## Key Findings
- **Drive-Thrus**: There is a 24% decrease in drive-thru availability when moving from low-income to high-income areas, and a 13% decrease when moving from low to medium-income areas.
- **Free WiFi**: No significant difference in availability across income brackets.
- **Fizzio Handcrafted Sodas**: A 12% decrease in availability in high-income areas compared to low-income areas, and a 4% decrease when moving from low to medium-income areas.
- **Digital Rewards**: A 7% increase in availability in high-income areas compared to low-income areas.

## Limitations
- **Model Accuracy**: The low R-squared of the model suggests that additional factors influencing Starbucks' amenity offerings were not captured in this study.
- **Generalizability**: The study is limited to California, which may reduce the generalizability of the findings to other regions.

## Conclusion
The analysis suggests that Starbucks strategically customizes its amenity offerings, such as drive-thrus and digital rewards, based on the local income demographics, underscoring its adaptability to market demands. While universal amenities like free WiFi suggest a standard level of service, the variation in offerings like Fizzio sodas indicates a tailored approach to local tastes. For a more holistic view, expanding the scope of variables and including multiple regions could provide deeper insights into Starbucks' amenity distribution strategies.

## Future Directions
- **Improved Models**: Using logistic regression models may better capture the complexity of consumer behavior.
- **Expanded Analysis**: Including additional regions beyond California would provide a broader understanding of Starbucks' market strategies.
