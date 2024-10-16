#!/bin/bash

# Define an array of all Buildkite plugin hooks
hooks=("environment" "pre-checkout" "checkout" "post-checkout" "pre-command" "command" "post-command" "pre-artifact" "post-artifact" "pre-exit")

# Create the hooks directory if it doesn't exist
mkdir -p hooks

# Loop through the hooks and create a corresponding script for each
for hook in "${hooks[@]}"; do
  echo "#!/bin/bash" > hooks/"$hook"
  echo "echo 'Hello from $hook hook!'" >> hooks/"$hook"
  
  # Make the script executable
  chmod +x hooks/"$hook"
done

echo "All hook scripts created in the hooks/ directory."
