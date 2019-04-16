#!/bin/bash

case "$1" in
	"start")
		echo "Opcion pasada: \"start\""
		;;
	"stop")
		echo "Opcion pasada: \"stop\""
		;;
	*)
		echo "Uso: $0 {start|stop}"
		exit 1
		;;
esac

	
