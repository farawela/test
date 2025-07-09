$filePath = "D:\com.txt" # Replace with the actual file path

foreach ($line in Get-Content $filePath) {
    # Process each line here
    $ip = $line
    $port = 443

try {
    $socket = New-Object System.Net.Sockets.TcpClient($ip, $port)
    if ($socket.Connected) {
        "$ip port $port open"
    } else {
        "$ip port $port not open"
    }
    $socket.Close()
} catch {
    
}
     
    # Add your specific logic for processing each line
}

