custom-git-commit-message
=========================

Scripts for customize the git commit message. 

## Instalation 

Install the script as executable on some place into your usual place for custom programs. 

    $ sudo install -m 0555 custom-git-commit-msg /usr/local/bin

Copy the hook into the git hooks  directory of your repository and change the permissions as executable.

    $ cp prepare-commit-msg .git/hooks

Make changes on your repository. Add, modify and delete files and commit them. The message shall be as this:

== Nuevos archivos == 

newfile:
    - 

anothernew\_file:
    -

== Modificados == 

updated\_file:
    -

== Borrados == 

deleted\_file:

And following the original commit message.



