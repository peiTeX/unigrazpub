#!/usr/bin/env texlua

module = "unigrazpub"

installfiles = {"tex/*.cls","*.cls"}
sourcefiles  = installfiles
unpackfiles  = { }

typesetexe="lualatex"
typesetopts=""

supportdir = "example/"

typesetsuppfiles = {"*/*.tex", "*/*.bib"}
demofiles = {"example/*/DEMO*.tex"}
typesetdemofiles = { "example/*/DEMO*.tex" }

textfiles = {"*.md"}
