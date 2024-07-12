sami@linux:~$ tldr tcpdump
tcpdump

 - Read from a given dump file:
   tcpdump -r {{dumpfile.pcap}}

sudo tcpdump -i wlp0s20f3 -w dumpfile.pcap src

wlp0s20f3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.10  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::62eb:b548:631d:22d9  prefixlen 64  scopeid 0x20<link>
        ether 8c:f8:c5:92:34:ed  txqueuelen 1000  (Ethernet)
        RX packets 60340  bytes 64262251 (64.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 28954  bytes 7483198 (7.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
#!/bin/bash

# Bash Script to Analyze Network Traffic

# Input: Path to the Wireshark pcap file
pcap_file= # capture input from terminal.

# Function to extract information from the pcap file
analyze_traffic() {
    # Use tshark or similar commands for packet analysis.
    # Hint: Consider commands to count total packets, filter by protocols (HTTP, HTTPS/TLS),
    # extract IP addresses, and generate summary statistics.

    # Output analysis summary
    echo "----- Network Traffic Analysis Report -----"
    # Provide summary information based on your analysis
    # Hints: Total packets, protocols, top source, and destination IP addresses.
    echo "1. Total Packets: [your_total_packets]"
    echo "2. Protocols:"
    echo "   - HTTP: [your_http_packets] packets"
    echo "   - HTTPS/TLS: [your_https_packets] packets"
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