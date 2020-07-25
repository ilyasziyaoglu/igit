# igit
Manage multi repository git projects like microservices

Igit developed for manage multipart projects. The main idea is that apply same instruction
to all project parts like git commands or any other. One of the most important features of
igit is that it is expandable. You can add your custom instructions to igit. That explained
at end of usage section.

## Feature Plans
This is the first version of the igit and the igit will continue to evolve. Your suggestions
and support are important to improve igit.

## Dependencies
There is no dependency.

## Installment
1. Cheange directory to 'igit/' that you cloned or downloaded.
2. Give execute permission for install.sh by using 'chmod 755 install.sh'.
3. Then execute that install file by using './install.sh'
4. To use igit you must start new terminal session or close and reopen your terminal
5. That is it only.

## Usage of igit

* To set the parent directory of project, change your directory to the parent
  which is including git repos as child directory and use 'igit set' command.
  After you set that parent directory you can use igit in any directory. And to
  see current parent directory use 'igit pardir' command. If you want change
  target project just repeat the above instraction above.
  
  ![alt text](https://github.com/ilyasziyaoglu/igit/blob/master/Screen%20Shot%202020-07-25%20at%2017.24.33.png?raw=true "Setting working directory 1")
 
* To list all branches in your repos use 'igit ubrs' command.
  
  ![alt text](https://github.com/ilyasziyaoglu/igit/blob/master/Screen%20Shot%202020-07-25%20at%2017.26.37.png?raw=true "Setting working directory 1")

* To list current branches use 'igit brs'.
  
  ![alt text](https://github.com/ilyasziyaoglu/igit/blob/master/Screen%20Shot%202020-07-25%20at%2017.25.18.png?raw=true "Setting working directory 1")

* To delete branch use 'igit delete <branch_name>'

* To switch branch of all repos use 'igit sw <branch_name>'. branch_name mean
  that branch names which listed by 'igit ubrs'. So you can copy and paste it
  easly.
  
  Note: For clean output, just have your git repos in the parent directory.
  
  ![alt text](https://github.com/ilyasziyaoglu/igit/blob/master/Screen%20Shot%202020-07-25%20at%2017.35.39.png?raw=true "Setting working directory 1")

* To create a new branch use 'igit new <new_branch_name>'. That will create a
  new branch for all your repos and will change all your repos to that new branch

* To stage your changes use 'igit add' command. To specify files use use like 
  'igit add <file_path>' or 'igit add <file_path> <file_path> ...'. You can use
  also 'igit add .' to stage all changes.
   
* To unstage all changes use 'igit reset'.

* To commit use 'igit commit <commit_message>'.

* To push use 'igit push'.

* To pull use 'igit pull'.

* To merge a branch to current branch use 'igit merge <from_branch_name>'

* To see statuses of repos use 'igit status'.

* To see difference between two branches use 'igit diff <branch_name1>..<branch_name2>'

* To stash your changes in all repost use 'igit stash' command.

* If you want add more functionality to igit just execute below command
  'echo "<git_command_without_parameters>" > ~/igit/<command_shortcute>'.
  Then to use it 'igit commend_shortcute' or 'igit commend_shortcute <params>'
  
  Example: To add rebase functionality execute this command
  'echo "git rebase" > ~/igit/rebase' and use like 'igit rebase <params>'.
