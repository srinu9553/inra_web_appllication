#!/bin/bash
# Update the package list
sudo apt-get update -y

# Install Apache
sudo apt-get install -y apache2

# Start Apache and enable it to run on boot
sudo systemctl start apache2
sudo stemctl enable apache2

# Create index.html
cat <<EOL > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
</head>
<body>
    <h1>Welcome to My Website!</h1>
    <p>This is a simple web application hosted on an Apache server.</p>
</body>
</html>
EOL
