# git-ls
List files and show their last commits

## Installation
Drop it in your `$PATH` with executable rights

## Example output
```
$ git ls -a
                   1	Staged
12345678901234567890	Not committed
       composer.json	5 weeks ago     7748f2e	Add me to authors
            examples	3 months ago    25e6221	Run php-cs-fixer
          .gitignore	2 weeks ago     e3ac374	Add compiled resources back into source
            init.php	3 weeks ago     ea58790	Port JS renderer
             LICENCE	3 years ago     ada8101	Changed licence to MIT
        node_modules	Gitignored
        package.json	2 weeks ago     e3ac374	Add compiled resources back into source
       .php_cs.cache	Gitignored
           README.md	3 weeks ago     df9318b	Rename Kint class methods and properties
           resources	2 weeks ago     e3ac374	Add compiled resources back into source
                 src	6 days ago      bdad28d	Kint_Object_Closure: Consistent parentheses
                 ttt	Not committed

```
