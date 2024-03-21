curl https://raw.githubusercontent.com/wakatime/vim-wakatime/master/scripts/install_cli.py | python3 -

fisher install ik11235/wakatime.fish

sed -e s/APIKEY/{$WAKATIMEAPIKEY}/ wakatime.cfg > ~/.wakatime.cfg
