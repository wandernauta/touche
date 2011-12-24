dnl 
dnl h.m4
dnl A touche template file for C/C++ headers.
dnl
dnl Options:
dnl - gpl: include a reference to the GPL ('version 2 or later')
dnl - once: include a #pragma once line (i.e. header guard)
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

ifdef(`once', `dnl
#pragma once

')dnl
