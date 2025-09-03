local pid = vim.fn.getpid()
return {
  cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(pid) }, -- May omit omnisharp path if in PATH
  filetypes = { "cs", "vb" },
  root_markers = { ".sln", ".csproj", ".git" }, -- Ensures proper workspace detection
  settings = {
    omnisharp = {
      useModernNet = false, -- Use true if using dotnet OmniSharp version
      monoPath = "/usr/bin/mono" -- If using mono version
    },
  },
}

