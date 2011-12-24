dnl
dnl gitignore.m4
dnl A touche template file for gitignore files.
dnl
dnl Options:
dnl - vim: ignore vim swap files
dnl - obj: ignore compiled object files
dnl - py: ignore python cache files
dnl - mac: ignore DS_Store files
dnl
ifdef(`vim',`*.swp
')ifdef(`obj',`*.o
')ifdef(`py',`*.pyc
')ifdef(`mac',`DS_Store
')dnl
