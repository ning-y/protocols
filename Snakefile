import glob

# Requirements: install bookdown, then run tinytex::install_tinytex.
rule build:
    output: directory("_book"), directory("_bookdown_files")
    input: lambda _: glob.glob("*.Rmd")
    conda: "_conda.yml"
    shell: """
        Rscript -e 'bookdown::render_book()'"""
