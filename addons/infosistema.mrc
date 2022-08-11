on 1:LOAD: {
  writeini $mircdirusr\ircapusr.ini infosistema fechainicio $date $time
  writeini $mircdirusr\ircapusr.ini infosistema tiempoconect 0
  writeini $mircdirusr\ircapusr.ini infosistema palabras 0

}

menu channel,query {
  Info Sistema:infopc
}

menu status {
  Info Sistema:stats
}



alias escribir { writeini $mircdirusr\ircapusr.ini infosistema $1 $2- }

alias infopc { msg $chan 2iNFoRMaCióN DeL SiSTeMa:  uSo uN: 10[14 $+ $dll(moo.dll,osinfo,_) $+ 10] TeNGo uNa MeMoRia De: 10[14 $+ $dll(moo.dll,meminfo,_) $+ 10] uSo De ToRRe uNa: 10[14 $+ $dll(moo.dll,cpuinfo,_) $+ 10] uSo uNa PaNTaLLa CoN uNa ReSoLuCióN De: 10[14 $+ $window(-1).w $+ x $+ $window(-1).h $+ 10] TeNGo uNa uPTiMe De: 10[14 $+ $dll(moo.dll,uptime,_) $+ 10] TeNGo uN DiSCo DuRo: Libre: 10[14 $+ Unidad C:\ $+ $disk(C).label $round($calc(($disk(C).free) / 1024^3),2) Gb; Unidad D:\ $+ $disk(D).label $round($calc(($disk(D).free) / 1024^3),2) Gb; Unidad E:\ $+ $disk(E).label $round($calc(($disk(E).free) / 1024^3),2) Gb; 10(14TOTAL: $calc($round($calc(($disk(c).free) / 1024^3),2) + $round($calc(($disk(d).free) / 1024^3),1) + $round($calc(($disk(e).free) / 1024^3),2)) $+ Gb $+ 10) ] }

alias infosistema unload -rs infosistema.mrc

alias stats { echo -s 2iNFoRMaCióN DeL SiSTeMa:  uSo uN: 10[14 $+ $dll(moo.dll,osinfo,_) $+ 10] TeNGo uNa MeMoRia De: 10[14 $+ $dll(moo.dll,meminfo,_) $+ 10] uSo De ToRRe uNa: 10[14 $+ $dll(moo.dll,cpuinfo,_) $+ 10] uSo uNa PaNTaLLa CoN uNa ReSoLuCióN De: 10[14 $+ $window(-1).w $+ x $+ $window(-1).h $+ 10] TeNGo uNa uPTiMe De: 10[14 $+ $dll(moo.dll,uptime,_) $+ 10] TeNGo uN DiSCo DuRo: Libre: 10[14 $+ Unidad C:\ $+ $disk(C).label $round($calc(($disk(C).free) / 1024^3),2) Gb; Unidad D:\ $+ $disk(D).label $round($calc(($disk(D).free) / 1024^3),2) Gb; Unidad E:\ $+ $disk(E).label $round($calc(($disk(E).free) / 1024^3),2) Gb; 10(14TOTAL: $calc($round($calc(($disk(c).free) / 1024^3),2) + $round($calc(($disk(d).free) / 1024^3),1) + $round($calc(($disk(e).free) / 1024^3),2)) $+ Gb $+ 10) ] }



on 1:INPUT:#: escribir palabras $calc($readini($mircdirusr\ircapusr.ini, infosistema, palabras) + $numtok($1-,32))
on 1:INPUT:?: escribir palabras $calc($readini($mircdirusr\ircapusr.ini, infosistema, palabras) + $numtok($1-,32))
on 1:DISCONNECT: escribir tiempoconect $calc($readini($mircdirusr\ircapusr.ini, infosistema, tiempoconect) + $online)


[ADDON]
nombre=Informacion del sistema
autor=gaRFio (dll por Mark Hutton)
ver=0.1
unload=infosistema unload
email=mark.hutton@btinternet.com
desc=Addon que muestra diversa informacion sobre el sistema.
