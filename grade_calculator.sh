#!/bin/bash
#
#while true; do
#  # Prompt user for input
#    read -p "Enter a percentage (0-100) or type 'q' to quit: " input
#
#      # Check if user wants to quit
#        if [[ "$input" == "q" || "$input" == "Q" ]]; then
#            echo "Exiting grade calculator. Goodbye!"
#                break
#                  fi
#
#                    # Validate input is an integer between 0 and 100
#                      if ! [[ "$input" =~ ^[0-9]+$ ]]; then
#                          echo "Invalid input: Please enter a number between 0 and 100."
#                              continue
#                                fi
#
#                                  if (( input < 0 || input > 100 )); then
#                                      echo "Invalid input: Number must be between 0 and 100."
#                                          continue
#                                            fi
#
#                                              # Determine grade
#                                                if (( input >= 90 )); then
#                                                    grade="A"
#                                                      elif (( input >= 80 )); then
#                                                          grade="B"
#                                                            elif (( input >= 70 )); then
#                                                                grade="C"
#                                                                  elif (( input >= 60 )); then
#                                                                      grade="D"
#                                                                        elif (( input >= 35 )); then
#                                                                            grade="E"
#                                                                              else
#                                                                                  grade="F"
#                                                                                    fi
#
#                                                                                      # Display result
#                                                                                        echo "Score: ${input}% - Grade: $grade"
#                                                                                        done
#
