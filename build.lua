#!/usr/bin/env texlua

module = "unigrazpub"

typesetexe="lualatex"

supportdir = "examples/"

typesetsuppfiles = {"*/*.tex", "*/*.bib"}
demofiles = {"examples/*/*.tex", "examples/*/*.bib"}

typesetdemofiles = {"DEMO*.tex"}
typesetfiles = {"*.dtx", "DEMO*.tex"}

textfiles = {"*.md"}
