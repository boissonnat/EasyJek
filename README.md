# Easy Jek

__EasyJek__ is a command line tool which help you to create easily your jekyll resources.


## Install EasyJek as command line

#### 1. Thor
__EasyJek__ is based on the [thor](https://github.com/erikhuda/thor) toolkit. You can install it through its gem :

```
gem install thor
```

#### 2. Download EasyJek
Download the __EasyJek__ archive file and unzip it where you want.

#### 3. Configuration
Set the environment variable ```EASYJEK_HOME``` to the extracted __EasyJek__ folder, e.g. :
```
bash$ export EASYJEK_HOME=/Users/johndoe/tools/easyjek
```

On unix, set execution permissions on the easyjek.rb file :
```
bash$ chmod +x JEKYLL_TOOL_HOME/bin/jekyll_tool.rb
```

Add easyjek.rb to your PATH environment variable :
```
bash$ export PATH=$PATH:$JEKYLL_TOOL_HOME/bin
```

#### 4. Give a try !
You're ready to go ! To try your install, cd in any folder and type easyjek.rb :
```
bash$ cd /tmp
bash$ easyjek.rb
```

... you should see the usage message, which means everything should be ok !


##### NOTE
You can rename the ```easyjek.rb``` file with ```easyjek```which will allow you to avoid the file extension in command line :
```
bash$ cd /tmp
bash$ easyjek
```

## Install EasyJek as a Thor command
__Thor__ offers the possibility to add some tasks in the global thor repository

```
bash$ thor install easyjek.rb
```

You should be able to list the available thor tasks with :

```
bash$ thor list
easyjek
-------
thor easyjek:new_post title  # Create a new Post
```

If you see easyjek in the list below, you should be able to run easyjek with :

```
bash$ thor easyjek
Commands:
  thor easyjek:help [COMMAND]  # Describe available commands or one specific command
  thor easyjek:new_post title  # Create a new Post
``