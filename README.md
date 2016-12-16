
# Useful commands

In order to compile the dissertation, run the following command, which will open evince with the PDF version of the document and will be updated when new changes are saved.

    latexmk -pvc dissertation.tex -pdf

To clean temporary files after a compilation, run the next command (the PDF must be closed in order to work).

    latexmk -C
