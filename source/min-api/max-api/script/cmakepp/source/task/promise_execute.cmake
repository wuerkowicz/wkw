function(promise_execute)
  execute(${ARGN} --async)
  ans(process_handle)
  promise_then_anonymous(""
    ()
    process_isrunning("${process_handle}")
    ans(still_running)
    if(still_running)
      map_tryget("\${task}" task_queue)
      ans(task_queue)
      task_queue_push("\${task_queue}" "\${task}")
      return()
    endif()
    return("${process_handle}")
    )
  return_ans()
endfunction()