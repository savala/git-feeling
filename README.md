# git-feeling
Let emojis show how you feel about your commits

![Showcase](https://github.com/savala/git-feeling/blob/master/screenshots/screenshot.png)

# Setup
Clone the current repo


```sh
git clone https://github.com/savala/git-feeling.git
```


Add feeling.sh as an alias for git


```sh
git config --global alias.feeling '!sh <path/to/git-feeling>/feeling.sh'
```


# Usage
Add some emotion to your commit messages now! Instead of git commit use the following:


```sh
git feeling [options] <message>
```


### Options
* `-h or --happy` - adds a :smiley:
* `-s or --sad` - adds a :tired_face:
* `-w or --win` - adds a :beer:
* `-a or --angry` - adds a :rage:
* `-m or --money` - adds a :moneybag:
* `-z or --zap` - adds a :zap:
