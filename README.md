# My Own NeoVim Config

##### TODO:
Language Support:
- [x] html / css -> emmet
- [x] javascript -> typescriptserver
- [x] python -> black, isort
- [x] scala -> nvim-metals (rabbit hole, might want to do later)
- [ ] markdown -> pandoc, see what else we can achieve here (bit of a rabbit hole -> later)

General Plugins:
- [x] prettier
- [x] treesitter
- [x] telescope
- [ ] harpoon
- [x] nvim-tree / neotree (leaning towards nvim-tree right now) (settled for nvim-tree, it just works like I want it to)
- [x] git plugins to integrate git better 
- [x] better status line
- [x] this TODO list plugin

Other stuff:
- [x] make code actions and everything work for pyright (pyright doesn't have code actions lol)
- [x] python documentation creation (maybe neogen) (this tool can do plenty more. basically all languages that I need)
- [ ] rebuild theme picker from nvchad
- [ ] see if I can improve the snippets a bit
- [x] different tab size depending on file type and what my formatter for that file wants
      This is fine for now, even though I couldn't really crack the code why it works
- [ ] Think about if it would make sense to create a global var that can be used to set some stuff  
      throughout the whole Config
    - [ ] Lua: understand formatting better and make it work more like in LazyVim
- [ ] add functionality to toggle transparency
- [x] Only use spaces for indents
- [x] add some standard options for line numners and symbols, so the side bar doesn't twitch around
- [x] Setup obsidian
