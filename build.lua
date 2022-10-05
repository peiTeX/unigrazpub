#!/usr/bin/env texlua

module = "unigrazpub"

installfiles = {"tex/*.cls","*.cls"}
sourcefiles  = installfiles
unpackfiles  = { }

packtdszip = true

typesetexe="lualatex"
typesetopts=""

supportdir = "example/"

typesetsuppfiles = {"*/*.tex", "*/*.bib"}
demofiles = {"example/*/*.tex", "example/*/*.bib"}
typesetdemofiles = { "example/*/DEMO*.tex" }

textfiles = {"*.md"}
