function(message_indent_level)
  map_peek_back("global" "message_indent_level")
  ans(level)
  if(NOT level)
    return(0)
  endif()
  return_ref(level)
endfunction()