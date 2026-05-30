def share_count_func():
    input_days = 0

    print(f"Please enter the number of days: ", end="")
    input_days = int(input())
    if input_days == 1:
        input_shares = 3
        print(f"Number of shares: {input_shares}")
    elif input_days < 1:
        print(f"+ve vibes only")
    elif input_days > 1:
        input_shares = 3 ** input_days
        print(f"Number of shares: {input_shares}")
    else:
        print("ling badlo")

# Execute the function
if __name__ == "__main__":
    share_count_func()
