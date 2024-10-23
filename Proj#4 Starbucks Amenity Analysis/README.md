# Starbucks Amenities and Income Demographics in California
## by Colin Zhou
**Date last Updated: 10/18/2024**
![Starbucks Amenities and Income Demographics in California](https://github.com/ColinZhou29/images/blob/main/github%20image/starbucks.jpg?raw=true)

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

![barchart](https://github.com/ColinZhou29/images/blob/main/github%20image/amenity.png?raw=true)

## Linear Regression Models
### Drive Thru - Linear Probability Model

Regression Equation: 
~~~~~
Drive Thru =  0.16 + -0.13 * income_med + -0.25 * income_high + (-9.2*10^-8) * X2010_population + 0.26 * digital_rewards + 0.11 * fizzio_handcrafted_sodas
~~~~~
![Drive Thru](https://github.com/ColinZhou29/images/blob/main/github%20image/drive%20thru.png?raw=true)

Keeping population and other amenities like digital rewards and Fizzio handcrafted sodas availability constant, there is a 24% decrease in the availability of drive-thrus when going from a low-income bracket to a high-income bracket Starbucks location. Similarly, there is a 13% drop in drive-thru availability when going from a low to medium-income Starbucks location.

### Free WI-FI - Linear Probability Model

Regression Equation: 
~~~~~
Free Wi-FI=  0.29 + 0.03 * income_med + 0.03 * income_high + -0.04 * fizzio_handcrafted_sodas + 0.48 * digital_rewards
~~~~~
![Free WI-FI](https://github.com/ColinZhou29/images/blob/main/github%20image/wifi.png?raw=true)

Keeping population and other amenities like digital rewards and Fizzio handcrafted sodas constant, there is no significant difference in the availability of free wifi in stores in areas across income brackets. This indicates that when providing free-wifi in a store, income is not a deciding factor.

### Fizzio Handcrafted Sodas - Linear Probability Model

Regression Equation: 
~~~~~
Fizzio Handcrafted Sodas =  0.24 + -0.04 * income_med + -0.12 * income_high + (5.79*10^-8) * X2010_population + 0.16 * drive_thru + -0.04 * free_wi_fi + 0.38 * digital_rewards
~~~~~
![Fizzio Handcrafted Sodas](https://github.com/ColinZhou29/images/blob/main/github%20image/fizzio.png?raw=true)

Keeping population and other amenities like digital rewards, drive-thrus, and free wifi availability constant, there is a 12% decrease in the availability of Fizzio handcrafted sodas when going from a low-income bracket to a high-income bracket Starbucks location. At a significance level of 0.1, there is also a 4% drop in the availability of these sodas when going from a low-income to medium-income bracket location.

### Digital Rewards - Linear Probability Model

Regression Equation: 
~~~~~
Digital Rewards =  0.28  + 0.07 * income_high + (1.47*10^-8)* X2010_population + 0.24 * drive_thru + 0.26* fizzio_handcrafted_sodas + 0.35 * free_wi_fi
~~~~~
![Digital Rewards](https://github.com/ColinZhou29/images/blob/main/github%20image/digital%20rewards.png?raw=true)

Keeping population and other amenities like drive-thrus, Fizzio handcrafted sodas, and free wifi availability constant, there is a 7% increase in the availability of digital rewards when going from a low-income bracket to a high-income bracket Starbucks location.


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
