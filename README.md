# Initial setup

```sh
git@github.com:Kalininator/.dotfiles.git
cd ~/.dotfiles
stow .
brew bundle
```

# Rails projects

For better Ruby LSP support in Rails projects (hover docs, go-to-definition for associations, routes, etc.), add to your Gemfile:

```sh
bundle add ruby-lsp-rails --group development
```

For debugging support (`<leader>d` for commands, `<leader>b` for breakpoints):

```sh
bundle add debug --group development,test
```

Then update `Procfile.dev` to enable the debug server on the web process only:

```
web: RUBY_DEBUG_OPEN=true RUBY_DEBUG_HOST=127.0.0.1 RUBY_DEBUG_PORT=38698 bin/rails server
css: bin/rails tailwindcss:watch
```

Also ensure the debug gem in `Gemfile` doesn't use the prelude (remove `require: "debug/prelude"` if present):

```ruby
gem "debug", platforms: %i[ mri windows ]
```

Workflow:
1. Run `bin/dev` in a terminal
2. In nvim, set breakpoints with `<leader>b`
3. `<leader>dc` or `<F5>` → select "attach"
4. Trigger code path in browser
5. `<leader>d` shows all debug commands
