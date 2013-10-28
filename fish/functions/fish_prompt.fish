function fish_prompt --description 'Write out the prompt'

    set -l last_status $status

    if not set -q __prompt_show_git
        set -g __prompt_show_git "true"
    end
    if not set -q __prompt_extra_small
        set -g __prompt_extra_small "false"
    end

    set -l __delim "$__low_color"">""$__normal_color"

    # Just calculate these once, to save a few cycles when displaying the prompt.
    if not set -q __colors_defined
        set -g __colors_defined true

        set -g __normal_color (set_color normal)
        set -g __time_color (set_color c6c6c6)
        set -g __low_color (set_color 898989)
        set -g __directory_color (set_color afd75f)
        set -g __directory_color_bold (set_color -o afd75f)
        set -g __error_status_color (set_color -o d70000)
        set -g __user_color (set_color -o ffd7d7)
        set -g __hostname_color (set_color -o ffaf00)
        set -g __jobs_color (set_color -o d7d75f)
        set -g __git_color (set_color a5f1f1)
        set -g __git_untracked_color (set_color d7af5f)
        set -g __git_untracked_color_bold (set_color -o d7af5f)
        set -g __git_changed_color (set_color ff87d7)
        set -g __git_changed_color_bold (set_color -o ff87d7)
        set -g __git_insertions_color (set_color 87af00)
        set -g __git_insertions_color_bold (set_color -o 87af00)
        set -g __git_deletions_color (set_color af0000)
        set -g __git_deletions_color_bold (set_color -o af0000)
    end

    # Time
    set -l __time "$__time_color"(date "+%H:%M:%S")"$__normal_color"" "

    # User name
    set -l __user
    if set -q USERNAME
        if [ $USERNAME != $USER ]
            set __user "$__user_color""$USER""$__normal_color""@"
        end
    end

    # Host name
    set -l __hostname
    if [ (env | grep SSH_CONNECTION) ]
        set __hostname "$__hostname_color"(hostname -s)"$__normal_color"
    end

    # Directory
    set -l __directory
    set -l __dirname
    set -l __basename
    if [ $PWD != $HOME ]
        set __dirname (dirname (prompt_pwd))"/"
        set __basename (basename $PWD)
    else
        set __basename "~"
    end
    set __directory "$__directory_color""$__dirname""$__directory_color_bold""$__basename""$__normal_color"

    # git info
    set -l __git_info
    if [ $__prompt_show_git = "true" ]
        if [ (__fish_git_prompt) ]
            set -l __git_files (git status --porcelain)
            set -l __git_untracked (echo "$__git_files" | grep -o "??" | wc -w)
            set -l __git_changed (echo "$__git_files" | grep -o "M" | wc -w)

            set -l __git_stats
            if [ $__git_untracked -ne 0 ]
                set __git_stats "$__low_color""(""$__normal_color"
                set __git_stats "$__git_stats""$__git_untracked_color_bold""$__git_untracked""$__normal_color""$__git_untracked_color""u""$__git_color"
                if [ $__git_changed -ne 0 ]
                    set __git_stats "$__git_stats""$__low_color""/""$__normal_color"
                else
                    set __git_stats "$__git_stats""$__low_color"") ""$__normal_color"
                    set __delim "$__git_color""?""$__normal_color"
                end
            end

            if [ $__git_changed -ne 0 ]
                set -l __git_shortstats (git diff --shortstat)
                set -l __git_insertions (echo "$__git_shortstats" | cut -d ' ' -f 5)
                set -l __git_deletions (echo "$__git_shortstats" | cut -d ' ' -f 7)

                set __delim "$__git_color""±""$__normal_color"

                if [ $__git_untracked -eq 0 ]
                    set __git_stats "$__low_color""(""$__normal_color"
                end
                if [ $__git_changed -ne 0 ]
                    set __git_stats "$__git_stats""$__git_changed_color_bold""$__git_changed""$__normal_color""$__git_changed_color""c""$__git_color"

                    set __git_stats "$__git_stats""$__low_color""/""$__normal_color"
                end
                if [ $__git_insertions -ne 0 ]
                    set __git_stats "$__git_stats""$__git_insertions_color_bold""$__git_insertions""$__normal_color""$__git_insertions_color""+""$__git_color"
                    if [ $__git_deletions -ne 0 ]
                        set __delim "$__git_color""±""$__normal_color"
                        set __git_stats "$__git_stats""$__low_color""/""$__normal_color"
                    else
                        set __delim "$__git_color""+""$__normal_color"
                    end
                end
                if [ $__git_deletions -ne 0 ]
                    set __git_stats "$__git_stats""$__git_deletions_color_bold""$__git_deletions""$__normal_color""$__git_deletions_color""-""$__git_color"
                    if [ $__git_insertions -eq 0 ]
                        set __delim "$__git_color""-""$__normal_color"
                    end
                end
                set __git_stats "$__git_stats""$__low_color"") ""$__normal_color"
            end
            set __git_info "$__git_color"(__fish_git_prompt | tr -d '[() ]')" ""$__git_stats""$__normal_color"
        end
    end

    # Jobs
    set -l __jobs_number (jobs | wc -l)
    set -l __jobs_stopped (jobs | grep "arrêtée" | wc -l)
    set -l __jobs_bg (math $__jobs_number - $__jobs_stopped)
    set -l __fish_jobs
    if [ $__jobs_number -ne 0 ]
        set __fish_jobs "$__jobs_color"
        if [ $__jobs_stopped -ne 0 ]
            set __fish_jobs "$__fish_jobs""$__jobs_stopped""z"
        end
        if [ $__jobs_stopped -ne 0 -a $__jobs_bg -ne 0 ]
            set __fish_jobs "$__fish_jobs""$__low_color""/""$__jobs_color"
        end
        if [ $__jobs_bg -ne 0 ]
            set __fish_jobs "$__fish_jobs""$__jobs_bg""&"
        end
        set __fish_jobs "$__fish_jobs""$__normal_color"" "
        if [ $__delim = "$__low_color"">""$__normal_color" ]
            set __delim "$__jobs_color""»""$__normal_color"
        end
    end

    # Status
    set -l __error_status
    if [ $last_status -ne 0 ]
        set __error_status "$__error_status_color""[$last_status]""$__normal_color"" "
        set __delim "$__error_status_color""!""$__normal_color"
    end

    # Print prompt
    if [ $__prompt_extra_small = "true" ]
        echo -n -s "$__delim" " "
    else
        echo -n -s "$__time" "$__low_color" "[" "$__normal_color" "$__user" "$__hostname" ":" "$__directory" "$__low_color" "] " "$__normal_color" "$__git_info" "$__fish_jobs" "$__error_status" "$__delim" " "
    end
end

function fish_small_prompt --description 'Make the prompt small'
    set -g __prompt_extra_small "true"
end

function fish_big_prompt --description 'Make the prompt big'
    set -g __prompt_extra_small "false"
end

function fish_show_git_info --description 'Show git info on the prompt'
    set -g __prompt_show_git "true"
end

function fish_hide_git_info --description 'Hide git info on the prompt'
    set -g __prompt_show_git "false"
end
