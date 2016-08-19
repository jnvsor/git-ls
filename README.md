# git-ls
List files and show their last commits

## Installation
Drop it in your `$PATH` with executable rights

## Example output

* Show hidden files with `-a`
* Disable color highlighting with `-c`
* Disable formatting with `-b`

```
$ git ls -a
composer.json	5 weeks ago   7748f2e	Add me to authors
examples     	3 months ago  25e6221	Run php-cs-fixer
.gitignore   	2 weeks ago   e3ac374	Add compiled resources back into source
init.php     	3 weeks ago   ea58790	Port JS renderer
LICENCE      	3 years ago   ada8101	Changed licence to MIT
node_modules 	Gitignored
package.json 	2 weeks ago   e3ac374	Add compiled resources back into source
.php_cs.cache	Gitignored
README.md    	3 weeks ago   df9318b	Rename Kint class methods and properties
resources    	2 weeks ago   e3ac374	Add compiled resources back into source
src          	6 days ago    bdad28d	Kint_Object_Closure: Consistent parentheses
t            	Staged
t1           	Staged
t2           	Untracked
t3           	Empty
```

```
$ git ls -b -a
composer.json	5 weeks ago	7748f2ec9bf17abdaf449af1b4e72dcf4a3435c4	Add me to authors
examples	3 months ago	25e62214e7572addbb01565e6eb288e866742cda	Run php-cs-fixer
.gitignore	2 weeks ago	e3ac3740e728972f7b6025798e55fee51df5be78	Add compiled resources back into source
init.php	3 weeks ago	ea5879023cc5c3f877ec61d817e906df9447743f	Port JS renderer
LICENCE	3 years ago	ada810111ced4e3a926b4040da9b86442e43b613	Changed licence to MIT
node_modules	Gitignored
package.json	2 weeks ago	e3ac3740e728972f7b6025798e55fee51df5be78	Add compiled resources back into source
.php_cs.cache	Gitignored
README.md	3 weeks ago	df9318b6acbd3fd5a4d82b743695d1af9e626af1	Rename Kint class methods and properties
resources	2 weeks ago	e3ac3740e728972f7b6025798e55fee51df5be78	Add compiled resources back into source
src	6 days ago	bdad28d6783188772c8b3f99bf21cd8e9940d783	Kint_Object_Closure: Consistent parentheses
t	Staged
t1	Staged
t2	Untracked
t3	Empty
```
