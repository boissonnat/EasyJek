# Jekyll tools

Tired by creating your jekyll's stuff by hand ? This jekyll tool will save your time :).

## Installation

**Pre requists**

Jekyll_tool is based on the [thor](https://github.com/erikhuda/thor) toolkit. You can install it through its gem :

```
gem install thor
```

Set the environment variable ```JEKYLL_TOOL_HOME``` to the extracted jekyll_tool folder, e.g. :
```
bash$ export JEKYLL_TOOL_HOME=/Users/johndoe/tools/jekyll_tool
```

On unix, set execution permissions on the jekyll_tool.rb file :
```
bash$ chmod +x JEKYLL_TOOL_HOME/bin/jekyll_tool.rb
```

Add jekyll_tool to your PATH environment variable :
```
bash$ export PATH=$PATH:$JEKYLL_TOOL_HOME/bin
```

You're ready to go ! To try your install, cd in any folder and type jekyll_tool :
```
bash$ cd /tmp
bash$ jekyll_tool
```

... you should see the usage message, which means everything should be ok !

