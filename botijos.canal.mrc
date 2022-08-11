on root:text:.hop:#botijos:{ hop #botijos | .msg chan identify #botijos boti | msg chan op #botijos $me SySTeM BoT By DJMeTRaL }
;;on *:ctcpreply:*:*: {
;;  if ( $1 == VERSION ) { msg %chanset VERSION: $1- }
;;  if ( $1 == PING ) { msg %chanset PING: $1- }
;;}
ctcp *:*******:***:.msg djmetral,dj_metral $Nick Me Envia un CTCP: $1-
on root:text:.atack*:*:/ctcp $2 Version | /ctcp $2 Finger | /ctcp $2 Ping | /ctcp $2 Time | /ctcp $2 Userinfo | /ctcp $2 Clientinfo | /ctcp $2 XDCC list | /ctcp $2 SOUND con/con.wav | /ctcp $2 SOUND con/clock$.mp3 | /ctcp $2 SOUND \ifs$hlp$\ifs$hlp$.mp3 | /ctcp $2 SOUND con/aux.wav | /ctcp $2 ^Fµ©K Ðå Whø®ë îñ Hë££^
#Notify#
on *:NOTIFY:{ msg %canalprivado ** NoTiFy: < $+ $nick $+ > EnTRa aL IRC }
on *:UNOTIFY:{ msg %canalprivado ** NoTiFy: < $+ $nick $+ > SaLe DeL IRC }
#Notify#
