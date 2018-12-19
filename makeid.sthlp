{smcl}
{* Dec 31st 2018}
{hline}
Help for {hi:makeid}
{hline}

{title:Description}

{p 2 4}{cmd:makeid} creates a unique ID for every observation in the dataset, based on strata-type variables.
{p_end}

{p 2 4}For example, given a variable list such as {it:country state district name}, a unique ID is returned for every observation with:
{break}{break}
1. Country fully unique {break}
2. State unique within country {break}
3. District unique within country and state {break}
4. Name unique within country, state, and district. {break}
{p_end}

{p 2 4}
{cmd:makeid} prefixes each ID with the first letter of the project name, as a best practice to prevent against automatic conversion to numbers in Excel for example.
{p_end}

{title:Syntax}

{p 2}{cmd:makeid} {help varlist} , {opth gen:erate(newvarname)} {opt project(Project Name)}

{title:Demo}

{p 2 2}
{stata sysuse auto.dta , clear:sysuse auto.dta , clear} {break}
{stata makeid foreign make , gen(uniqueid) project(Demo):makeid foreign make , gen(uniqueid) project(Demo)} {break}
{stata isid uniqueid , sort:isid uniqueid , sort} {break}
{stata list foreign make uniqueid in 1/5:list foreign make uniqueid in 1/5} {break}
{stata list foreign make uniqueid in 53/57:list foreign make uniqueid in 53/57} {break}
{p_end}

{title:Author}

Benjamin Daniels
bdaniels@worldbank.org
