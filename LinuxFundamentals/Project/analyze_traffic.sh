#!/usr/bin/bash

######################################
# @Project Module 1 Linux fundamentals
# @file: analyze_traffic.sh
# @date: Jul 12, 2024
# @author: Ahmed Samy
######################################


# Bash Script to Analyze Network Traffic


# Input: Path to the Wireshark pcap file
########################################
#         User Configurable             # 
########################################
pcap_file="./capture_file.pcap"
########################################


if [ ! -f "$pcap_file" ]; then
    echo "file not found: $pcap_file"
    exit 1
fi

# Function to extract information from the pcap file
analyze_traffic() {
    # Use tshark or similar commands for packet analysis.
    # Hint: Consider commands to count total packets, filter by protocols (HTTP, HTTPS/TLS),
    
    #    - Analyze packets from a file:
    #    tshark -r {{path/to/file.pcap}}



    Total_No_of_packets=$(tshark -r "$pcap_file" | wc --lines)

    #    -Y|--display-filter  <displaY filter> 
    http_packets=$(tshark -r "$pcap_file" -Y "http" | wc --lines )

    https_packets=$(tshark -r "$pcap_file" -Y tls | wc -l)


   
    # extract IP addresses, and generate summary statistics.

    # Output analysis summary
    echo "----- Network Traffic Analysis Report -----"
    # Provide summary information based on your analysis
    # Hints: Total packets, protocols, top source, and destination IP addresses.
    echo "1. Total Packets: ${Total_No_of_packets}"
    echo "2. Protocols:"
    echo "   - HTTP: ${http_packets} packets"
    echo "   - HTTPS/TLS: ${https_packets} packets"
    echo ""
    echo "3. Top 5 Source IP Addresses:"
    # Provide the top source IP addresses
    echo "[your_top_source_ips]"
    echo ""
    echo "4. Top 5 Destination IP Addresses:"
    # Provide the top destination IP addresses
    echo "[your_top_dest_ips]"
    echo ""
    echo "----- End of Report -----"
}

# Run the analysis function
analyze_traffic
