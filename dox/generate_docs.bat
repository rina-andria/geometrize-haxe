rem This batch file generates the documentation for Primitive Haxe.

rem Clean the generated documentation folder, to remove any old documentation.
rd /s /q "generated_docs"

rem Delete any existing generated XML-format type information.
del types.xml

rem Build the XML-format type information.
haxe build.hxml

rem Generate the documentation.
haxelib run dox -i types.xml -theme ./themes/samcodes --title "Primitive API" -D version 1.0.0 --include "(primitive)" -o generated_docs