def steps_count_func():
    total_days = 2
    total_counts = []

    students = int(input("Please enter the number of students: "))

    for student in range(1, students + 1):
        student_steps = 0
        for day in range(1, total_days + 1):
            steps = int(input(f"Student {student}, Day {day} steps: "))
            student_steps += steps

        total_counts.append({
            "student": f"Student {student}",
            "total_days": total_days,
            "steps": student_steps,
        })

    for total_count in total_counts:
        print(total_count)

    sorted_counts = sorted(total_counts, key=lambda item: item["steps"])

    lowest = sorted_counts[0]
    highest = sorted_counts[-1]

    print(f"Lowest step student: {lowest['student']} with {lowest['steps']} steps")
    print(f"Highest step student: {highest['student']} with {highest['steps']} steps")

    print("\nStudents sorted by total steps:")
    for total_count in sorted_counts:
        print(f"{total_count['student']}: {total_count['steps']} steps")

# Execute the function
if __name__ == "__main__":
    steps_count_func()
