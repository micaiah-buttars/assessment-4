# OPEN FILE AND ASSIGN TO log_file
log_file = open("um-server-01.txt")

# FUNCTION sales_reports IS DECLARED,
# WHICH TAKES IN THE ARGUMENT log_file
def sales_reports(log_file):
    # FOR LOOP IS DECLARED TO LOOP OVER log_file
    for line in log_file:
        # LINE FROM FILE IS CLEANED UP AND ASSIGNED TO line
        line = line.rstrip()
        # A SLICE OF LINE FROM INDEX 0 TO 3 IS ASSIGNED TO day
        day = line[0:3]
        # IF STATEMENT CHECKS IF day IS EQUAL TO THE DESIGNATED STRING
        if day == "Mon":
            # IF THE EVALUATION RETURNS TRUE, PRINT line
            print(line)

# sales_reports IS INVOKED, TAKING IN THE OPEN log_file AS IT'S ARGUMENT
sales_reports(log_file)
