#!/bin/bash

generate_password() {
    
    #different sets
    
    lowercase='abcdefghijklmnopqrstuvwxyz'
    uppercase='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    numbers='0123456789'
    special_chars='!@#$%^&*()_+-=[]{}|;:,.<>?'

    all_chars="$lowercase$uppercase$numbers$special_chars"

    length=$1

    password=$(tr -dc "$all_chars" < /dev/urandom | head -c "$length")

    echo "$password"
    
}

echo "Enter password length:"
read length

echo "Generated Password:"
generate_password "$length"

