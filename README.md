# My Neovim settings for macOS
---
[Neovim Home](https://neovim.io/)
---
### Language Servers
npm -g install neovim typescript-language-server bash-language-server
pip install pynvim jedi-language-server
brew install lua lua-language-server

:PackerSync
:TSUpdate
:TSUpdateFromGrammar javascript html css bash lua python json
