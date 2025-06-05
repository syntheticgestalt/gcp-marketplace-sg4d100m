default:
    just --list
preview:
    pixi run quarto preview docs
render:
    pixi run quarto render docs
publish:
    pixi run quarto publish gh-pages --no-prompt --no-browser --no-render docs
clean:
    git clean -fdx # remove untraced files