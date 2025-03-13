#!/bin/bash

read -p "Enter your role (Admin, Editor, Viewer): " role

# Use a case statement to display different messages
case $role in
    Admin)
        echo "Welcome, Admin! You have full access.";;
    Editor)
        echo "Welcome, Editor! You can edit content.";;
    Viewer)
        echo "Welcome, Viewer! You can only view content.";;
    *)
        echo "Invalid role. Please enter Admin, Editor, or Viewer.";;
esac