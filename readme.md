#### Terminal setup ( Starship - Powershell - Neovim)
```
> Install scoop 
$ Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
$ irm get.scoop.sh | iex
$ scoop install neovim

> Make directory for setup file config ( if you use WindowOS replace touch = ni )
$ cd .config
$ mkdir powershell && touch powershell/user_profile.ps1
$ mkdir starship && touch starship/starship.toml

> Install PowerShell and NerdFont - https://www.nerdfonts.com/ 
$ Invoke-Expression (&starship init powershell)
$ Install-Module posh-git -Scope CurrentUser -Force
$ Install-Module oh-my-posh -Scope CurrentUser -Force
$ Install-Module -Name Terminal-Icons -Repository PSGallery -Force

```

```
Setup redirect config: nvim $PROFILE.CurrentUserCurrentHost
Input >
    $env:USERPROFILE\.config\powershell\user_profile.ps1

Setup neovim config:
$ cd C:\Users\YOURNAME\AppData\Local\nvim
$ touch init.vim 
Input > 
    source ~\.config\nvim\plugins\plugins.vim
    source ~\.config\nvim\init.vim

> Install neovim plug 
$ iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
$ vim -> :PlugInstall 

Setup Schema Color: Open settings PowerShell -> Open JSON File -> Replace all = schemaColor.json. 
Then find Appearance in PowerShell settings -> Chosse Color Scheme datnguyennnx.
```

