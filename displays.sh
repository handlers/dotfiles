function laptopIs() {
	set -x
	case "$1" in
	b)
		positionFlag="--below"
		;;
	l)
		positionFlag="--left-of"
		;;
	r)
		positionFlag="--right-of"
		;;
	esac

	xrandr --output eDP-1 $positionFlag HDMI-1
	set +x
}
function loRez() {
	set -x
	xrandr --output eDP-1 --mode 1368x768
	set +x
}
