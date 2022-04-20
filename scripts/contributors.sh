unquote() {
  echo $1 | sed 's/"//g'
}

isbot() {
  [ "$1" = "allcontributors[bot]" ] && return 0
  [ "$1" = "fossabot" ] && return 0
  [ "$1" = "codacy-badger" ] && return 0
  return 1
}

while read -r _user
do
  user=$(unquote $_user)
  read -r _avatar
  read -r url
  avatar=$(unquote $_avatar)
  isbot $user && continue
  echo "  <div display=grid><a href=$url grid-row=1 grid-column=1><img src=\"$avatar\" alt=\"$user\" width=\"50\"/></a><span grid-row=2 grid-column=1>$user</span></div>"
done < contributor_list
