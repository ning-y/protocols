import glob

rule build:
    output: directory("_book"),  # directory("_bookdown_files")
    input:
        lambda _: glob.glob("*.Rmd"),
        "_common.R"
    conda: "_conda.yml"
    shell: """
        Rscript -e 'bookdown::render_book()'"""
