URLS=(
"https://pbs.twimg.com/profile_images/1199451871544430593/UhTH0esu_400x400.jpg"
"https://avatars2.githubusercontent.com/u/20732540?s=400&u=a890f5ccc40c872d57606272567a3eacf5659e4b&v=4"
"https://media-exp1.licdn.com/dms/image/C4E03AQEEBfRT_NwVYQ/profile-displayphoto-shrink_200_200/0?e=1586390400&v=beta&t=2QaQFMvKifRL87vfphLkgp-WeqtfOaj_UMHJz2uydR4"
"https://yt3.ggpht.com/a-/AOh14GghEkEm9lYCDybJek-Dk83rcYGEjfyZonUPtv-E=s288-c-k-c0xffffffff-no-rj-mo"
)

RANDOM_URL=${URLS[$(( $RANDOM % ${#URLS[@]} + 1 ))]}

sina () {

	if [[ -v BROWSER ]]; then
		$BROWSER $RANDOM_URL
	else
		firefox $RANDOM_URL || chrome $RANDOM_URL
	fi
}
