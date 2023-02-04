*** Settings ***
# Importing test libraries, resource files and variable files.
Library        pyats.robot.pyATSRobot
Library        genie.libs.robot.GenieRobot

*** Variables ***
# Define the pyATS testbed file to use for this run
${testbed}     csr1000v_testbed.yaml

*** Test Cases ***
# Creating test cases from available keywords.

Connect
    # Initializes the pyATS/Genie Testbed
    use testbed "${testbed}"

    # Connect to both device
    connect to device "CSR1000V-01"

# Verify Bgp Neighbors
Verify the counts of Bgp 'established' neighbors for CSR1000V-01
    verify count "1" "bgp neighbors" on device "CSR1000V-01"

# Verify Interfaces
Verify the counts of 'up' Interace for CSR1000V-01
    verify count "2" "interface up" on device "CSR1000V-01"