# add time and jobs
LP_PS1="${LP_PS1_PREFIX}${LP_TIME}${LP_JOBS}"
# add user and host
LP_PS1="${LP_PS1}[${LP_USER}${LP_HOST}"

# path in foreground color
LP_PS1="${LP_PS1}${LP_PWD}]"
# add VCS infos
LP_PS1="${LP_PS1}${LP_VCS}"
# add return code and prompt mark
LP_PS1="${LP_PS1}${LP_ERR}${LP_MARK}"

# vim: set et sts=4 sw=4 tw=120 ft=sh:
