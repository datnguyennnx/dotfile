#### Terminal setup ( Starship - Powershell - Lazyvim)

``` bash
> Install Choco
$ Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
$ choco install neovim
$ choco install starship


> Make directory for setup file config ( if you use WindowOS replace touch = ni )
$ cd .config
$ mkdir powershell && touch powershell/user_profile.ps1
$ mkdir starship && touch starship/starship.toml

If you have trouble about premission of powershell set -Scope AllUsers 

> Install PowerShell and NerdFont - https://www.nerdfonts.com/ 
$ Invoke-Expression (&starship init powershell)
$ Install-Module posh-git -Scope CurrentUser -Force
$ Install-Module oh-my-posh -Scope CurrentUser -Force
$ Install-Module -Name Terminal-Icons -Repository PSGallery -Force

```

```bash
Setup redirect config: nvim $PROFILE.CurrentUserCurrentHost
Input >
.    $env:USERPROFILE\.config\powershell\user_profile.ps1

Setup lazyvim config:
$ Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
$ Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
$ git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
$ Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force



Setup Schema Color: Open settings PowerShell -> Open JSON File -> Replace all = schemaColor.json. 
Then find Appearance in PowerShell settings -> Chosse Color Scheme datnguyennnx.
```

```bash
sudo apt update

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```