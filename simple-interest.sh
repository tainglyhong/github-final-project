#!/bin/bash

# Simple Interest Calculator
# Calculates simple interest based on user input

echo "Simple Interest Calculator"
echo "=========================="

# Get principal amount
read -p "Enter principal amount (p): " principal

# Get annual rate of interest
read -p "Enter annual rate of interest (r in %): " rate

# Get time period in years
read -p "Enter time period in years (t): " time

# Calculate simple interest
# Formula: SI = (p * t * r) / 100
simple_interest=$(echo "scale=2; ($principal * $time * $rate) / 100" | bc)

echo "=========================="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "--------------------------"
echo "Simple Interest: $simple_interest"
