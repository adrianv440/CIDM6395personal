# Code 
# Data Table 1 & Table 2
table1_data = [18.1, 15.4, 19.0, 13.4, 10.2, 13.1, 18.1, 14.4, 15.0, 10.8, 5.4, 12.2]
table2_data = [0.7, 0.0, 0.7, 1.0, 1.1, 0.4, 0.0, 1.0, 2.3, 2.9, 1.3]

# Average mortality rates
average_before = sum(table1_data) / len(table1_data)
average_after = sum(table2_data) / len(table2_data)

# Averages to one decimal place
print(f"Average mortality rate before handwashing policy: {average_before:.1f}")
print(f"Average mortality rate after handwashing policy: {average_after:.1f}")
