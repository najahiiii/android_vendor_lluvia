for f in $(cat vendor/lluvia/lluvia.devices); do
    add_lunch_combo lluvia_$f-userdebug;
done
