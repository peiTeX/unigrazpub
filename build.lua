#!/usr/bin/env texlua

module = "unigrazpub"

installfiles = {"tex/*.cls","*.cls"}
sourcefiles  = installfiles
unpackfiles  = { }

packtdszip = true

typesetexe="lualatex"
typesetopts=""

supportdir = "examples/"

typesetsuppfiles = {"*/*.tex", "*/*.bib"}
demofiles = {"examples/*/*.tex", "examples/*/*.bib"}
typesetdemofiles = { "example/*/DEMO*.tex" }

textfiles = {"*.md"}
