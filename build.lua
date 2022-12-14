#!/usr/bin/env texlua

module = "unigrazpub"

typesetexe="lualatex"

supportdir = "."
typesetsuppfiles = {"*/*/*.tex", "*/*/*.bib"}
typesetdemofiles = {"*/*/DEMO*.tex"}
demofiles = {"examples*"}
flatten=false

typesetdemofiles = {"DEMO*.tex"}
typesetfiles = {"*.dtx"}

function typeset(file,dir,exe)
	dir = dir or "."
	local errorlevel = tex(file,dir,exe)
	if errorlevel ~= 0 then
		return errorlevel
	end
	tex(file,dir,exe)-- add additional tex run to resolve issues concerning the bibliography
	local name = jobname(file)
	errorlevel = biber(name,dir) + bibtex(name,dir)
	if errorlevel ~= 0 then
		return errorlevel
	end
	for i = 2,typesetruns do
		errorlevel =
			makeindex(name,dir,".glo",".gls",".glg",glossarystyle) +
			makeindex(name,dir,".idx",".ind",".ilg",indexstyle)    +
			tex(file,dir,exe)
		if errorlevel ~= 0 then break end
	end
	return errorlevel
end
