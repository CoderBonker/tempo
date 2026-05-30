def analyze_electricity_usage():
    daily_units = []
    total_consumption = 0
    high_consumption_days = 0

    print("Please enter the electricity units consumed for each of the 7 days:")

    # 1. Accept units for 7 days
    for day in range(1, 8):
        while True:
            try:
                units = float(input(f"Day {day}: "))
                if units < 0:
                    print("Please enter a positive value.")
                    continue
                daily_units.append(units)
                total_consumption += units

                # 4. Count days with > 15 units
                if units > 15:
                    high_consumption_days += 1
                break
            except ValueError:
                print("Invalid input. Please enter a numeric value.")

    print(f"{total_consumption}, {high_consumption_days}")

    # 2. Calculate average
    average_consumption = total_consumption / 7

    # 3. Determine category
    if average_consumption < 8:
        category = "Efficient Usage"
    elif 8 <= average_consumption <= 15:
        category = "Moderate Usage"
    else:
        category = "High Consumption"

    # Display Results
    print("\n--- Usage Report ---")
    print(f"Total Consumption: {total_consumption:.2f} units")
    print(f"Average Consumption: {average_consumption:.2f} units/day")
    print(f"Category: {category}")
    print(f"Number of days with high consumption (> 15 units): {high_consumption_days}")

# Execute the function
if __name__ == "__main__":
    analyze_electricity_usage()


