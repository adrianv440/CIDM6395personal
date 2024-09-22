# Follow the instructions for how to code this application


# Empty list
guest_list = []

# Loop
while True:
    guest_name = input("Enter a guest's name or type 'end' to stop: ")
    if guest_name.lower() == "end":
        break  # break loop (case-insensitive)
    guest_list.append(guest_name)

# guests
for guest in guest_list:
    print(guest)

# sum of food 
total_guests = len(guest_list)
cost_per_guest = 12
total_cost = total_guests * cost_per_guest

# total cost message
print(f"You have invited {total_guests} guests at a cost of ${total_cost:.2f} for food.")

