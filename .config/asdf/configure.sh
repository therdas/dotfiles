#!/bin/sh
if [ -d "$HOME/.temp/asdf"  ]; then
    rm -rf "$HOME/.temp/asdf"
fi
git clone https://github.com/asdf-vm/asdf.git --branch 'v0.16.0' ~/.temp/asdf
cd "$HOME/.temp/asdf"
make

mkdir -p "$HOME/.asdf"
cp "asdf" "$ASDF_DIR"
mkdir -p "$ASDF_DIR/completions"
"$ASDF_DIR/asdf" completion zsh > "$ASDF_DIR/completions/_asdf"

rm -rf "$HOME/.temp/asdf"
