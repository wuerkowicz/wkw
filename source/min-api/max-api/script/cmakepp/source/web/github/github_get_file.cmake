    function(github_get_file user repo ref path)
        set(raw_uri "https://raw.githubusercontent.com/")
        set(path_uri "${raw_uri}/${user}/${repo}/${ref}/${path}" )
        http_get("${path_uri}" ${ARGN})
        return_ans()
    endfunction()