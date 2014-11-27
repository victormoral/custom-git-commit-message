custom-git-commit-message
=========================

Scripts for customize the git commit message. 

As a side effect of modify the commit message, it's difficult cancel the commit process. Git thinks that the message has been edited because its contents is different. 

If you want cancel you must delete all lines before the first comment line. 

## Dependencies

This package depends on the following Perl modules:

* Modern::Perl
* Locale::TextDomain
* Locale::Messages

In Debian these modules are in the packages:

* libmodern-perl-perl
* libintl-perl

## Instalation 

Install the script as executable on some place into your usual place for custom programs. 

    $ sudo install -m 0555 custom-git-commit-msg /usr/local/bin

Copy the hook into the git hooks  directory of your repository and change the permissions as executable.

    $ cp prepare-commit-msg .git/hooks

Make changes on your repository. Add, modify and delete files and commit them. The message shall be as this:

    == Nuevos archivos == 

    newfile:
        - 

    anothernew_file:
        -

    == Modificados == 

    updated_file:
        -

    == Borrados == 

    deleted_file:

And following the original commit message.



