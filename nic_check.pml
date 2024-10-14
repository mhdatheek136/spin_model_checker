mtype = { true, false }; // Define message types for logical values

// Process to check if a person is eligible for an NIC
proctype CheckNIC(byte age, byte isPakistani) {
    if
    :: (isPakistani == true && age > 18) -> 
        printf("Eligible for NIC.\n");
    :: else -> 
        printf("Not eligible for NIC.\n");
    fi
}

// Initial process to set up the parameters and run the CheckNIC process
init {
    byte age = 20; // Example age
    byte isPakistani = true; // Using byte for boolean representation
    run CheckNIC(age, isPakistani); // Call the CheckNIC process
}

