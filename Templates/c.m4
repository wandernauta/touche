dnl 
dnl c.m4
dnl A touche template file for C source files.
dnl
dnl Options:
dnl - gpl: include a reference to the GPL ('version 2 or later')
dnl - svn: include a Subversion $Id$ line
dnl
//
// FILE
// Copyright (C) YEAR  FULLNAME
//
include(TPLDIR`/common/gpl.m4')dnl
ifdef(`svn', `dnl
// $Id$
')dnl

