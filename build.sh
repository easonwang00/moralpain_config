#! /bin/bash


# The following test is needed in case VScode was installed by other
# means (e.g. using Ubuntu snap)
if ! which code; then
  wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868
  apt-get install -y ./code.deb
  rm code.deb
fi
code --install-extension jroesch.lean


wget https://raw.githubusercontent.com/Kha/elan/master/elan-init.sh
bash elan-init.sh -y
rm elan-init.sh
# python3 -m pip install --user pipx
# python3 -m pipx ensurepath
. ~/.profile
#echo 1
#find / | grep leanproject
pipx install mathlibtools

#! /bin/bash
