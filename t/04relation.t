#!/usr/bin/perl

use strict;
use Test::More;
use MyTest::TopNode;

use strict;
plan tests => 6;

# Tests here

my $xml = qq!<foo><stalk beans="3" /><stalk beans="4" /><stalk /></foo>!;

my $tree = MyTest::TopNode->new( xml => $xml);

isa_ok($tree, 'MyTest::TopNode', "Tree object");
can_ok($tree, 'stalk');

is ("${tree}", $xml, "Stringify tree");

my @res = $tree->four_beans;

cmp_ok(@res, '==', 1, "One node returned");

my $node = $res[0];

isa_ok($node, 'MyTest::MultiChild', "Result is an object of correct class");

is ("${node}", '<stalk beans="4" />', "Stringify ok");
