# Set a custom session root path. Default is $HOME.
# Must be called before initialize_session.
session_root "~/Documents/MovieDB"

# Create session with specified name if it does not already exist.
if initialize_session "Web"; then

  # Editor Window
  new_window "Editor"
  run_cmd "nvim"
  
  # Terminal Window (for git, curl, or other tasks)
  new_window "Terminal"

  # Server Window
  new_window "Server"
  run_cmd "npm install"             # Ensure dependencies are installed
  run_cmd "npm run dev"             # Start development server

  # Select the default window
  select_window "Editor"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
