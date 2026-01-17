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
