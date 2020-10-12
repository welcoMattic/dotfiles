if [[ $(xfconf-query -c xfce4-notifyd -p /do-not-disturb) = true ]]; then
	echo ""
else
	echo ""
fi