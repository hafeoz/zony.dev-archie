#!/bin/sh

curl -o assets/js/feather.js -L 'https://unpkg.com/feather-icons/dist/feather.js'
curl -o - -L "$(curl https://api.github.com/repos/KaTeX/KaTeX/releases/latest | jq -r '.assets[] | select(.name=="katex.tar.gz") | .browser_download_url')" | tar -zxf - -C assets katex/katex.js katex/katex.css katex/fonts katex/contrib/auto-render.js
mv assets/katex/fonts static/katex/fonts
curl -o assets/css/heti.css -L 'https://unpkg.com/heti/umd/heti.min.css'
curl -o assets/js/heti-addon.js -L 'https://unpkg.com/heti/umd/heti-addon.min.js'
