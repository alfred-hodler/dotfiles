# Safely create ~/.config if it doesn't exist
mkdir -p "$HOME/.config"

# Loop through every directory in the current folder
for dir in */; do
    # Remove the trailing slash for the name
    dir_name=$(basename "$dir")
    
    # Create the symlink (forces and overrides existing symlinks with -f)
    ln -sfn "$(pwd)/$dir_name" "$HOME/.config/$dir_name"
    
    echo "Linked $dir_name -> ~/.config/$dir_name"
done
