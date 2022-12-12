segment .text
; fn Arr.get<Chunk>
fn_Arr_dot_get_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get_Chunk__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_1" }
  push str_1
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get_Chunk__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get_Chunk__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__Chunk_ ; -- ptr+<Chunk>
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.get<Game>
fn_Arr_dot_get_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get_Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_2" }
  push str_2
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get_Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get_Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__Game_ ; -- ptr+<Game>
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.get<Part2Game>
fn_Arr_dot_get_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_3" }
  push str_3
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get_Part2Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__Part2Game_ ; -- ptr+<Part2Game>
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.get<String>
fn_Arr_dot_get_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get_String__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_4" }
  push str_4
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get_String__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get_String__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__String_ ; -- ptr+<String>
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.get<char>
fn_Arr_dot_get_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_5" }
  push str_5
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get_char__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get_char__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.get_ref_mut<Chunk>
fn_Arr_dot_get__ref__mut_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_get__ref__mut_Chunk__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(37)
  push 37
  ; -- PushGlobal { id: "str_6" }
  push str_6
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_get__ref__mut_Chunk__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_get__ref__mut_Chunk__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Chunk_ ; -- ptr+_mut<Chunk>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.set<Chunk>
fn_Arr_dot_set_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_set_Chunk__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_7" }
  push str_7
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_set_Chunk__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_set_Chunk__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Chunk_ ; -- ptr+_mut<Chunk>
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.set<Game>
fn_Arr_dot_set_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_set_Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_8" }
  push str_8
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_set_Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_set_Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Game_ ; -- ptr+_mut<Game>
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.set<Part2Game>
fn_Arr_dot_set_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_set_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_9" }
  push str_9
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_set_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_set_Part2Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Part2Game_ ; -- ptr+_mut<Part2Game>
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.set<String>
fn_Arr_dot_set_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_set_String__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_10" }
  push str_10
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_set_String__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_set_String__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_String_ ; -- ptr+_mut<String>
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Arr.set<char>
fn_Arr_dot_set_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Arr_dot_set_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_11" }
  push str_11
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Arr_dot_set_char__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Arr_dot_set_char__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_char_ ; -- ptr+_mut<char>
  ; -- Operator { op: Write, size: Some((1, 1)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], bl
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Chunk.consolidate
fn_Chunk_dot_consolidate:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- JumpDest { id: 0 }
fn_Chunk_dot_consolidate_jmp_dest_0:
  ; -- Call("dup<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup__star_Block_ ; -- dup<*Block>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_consolidate_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_consolidate_jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Chunk_dot_consolidate_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_Chunk_dot_consolidate_jmp_dest_2:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Chunk_dot_consolidate_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Chunk_dot_consolidate_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 64 }
  add qword [frame_end_ptr], 64
  ; -- Jump { dest_id: 0 }
  jmp fn_Chunk_dot_consolidate_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_Chunk_dot_consolidate_jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Chunk.next
fn_Chunk_dot_next:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Chunk.print
fn_Chunk_dot_print:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_12" }
  push str_12
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_Chunk_dot_print_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_print_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(3)
  push 3
  ; -- PushGlobal { id: "str_13" }
  push str_13
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__u64_ ; -- print<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_14" }
  push str_14
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><bool>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__bool_ ; -- print<T><bool>
  ; -- PushU64(3)
  push 3
  ; -- PushGlobal { id: "str_15" }
  push str_15
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Jump { dest_id: 0 }
  jmp fn_Chunk_dot_print_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_Chunk_dot_print_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushU64(2)
  push 2
  ; -- PushGlobal { id: "str_16" }
  push str_16
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Chunk.try_alloc
fn_Chunk_dot_try__alloc:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_Chunk_dot_try__alloc_jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_try__alloc_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<Arr<u8>>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt_Arr_u8___ ; -- drop<Opt<Arr<u8>>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpFalse { dest_id: 6 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_try__alloc_jmp_dest_6
  ; -- StartBlock
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 7 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_7
  ; -- JumpDest { id: 6 }
fn_Chunk_dot_try__alloc_jmp_dest_6:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 8, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 64
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_try__alloc_jmp_dest_4
  ; -- StartBlock
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 5 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_5
  ; -- JumpDest { id: 4 }
fn_Chunk_dot_try__alloc_jmp_dest_4:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 9, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 72
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Chunk_dot_try__alloc_jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 9, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 72
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.Some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_Arr_u8__ ; -- Opt.Some<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 3 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_Chunk_dot_try__alloc_jmp_dest_2:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.Some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_Arr_u8__ ; -- Opt.Some<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Chunk_dot_try__alloc_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 5 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_5
  ; -- JumpDest { id: 5 }
fn_Chunk_dot_try__alloc_jmp_dest_5:
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 7 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_7
  ; -- JumpDest { id: 7 }
fn_Chunk_dot_try__alloc_jmp_dest_7:
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Jump { dest_id: 0 }
  jmp fn_Chunk_dot_try__alloc_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_Chunk_dot_try__alloc_jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn File.close
fn_File_dot_close:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_close")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__close ; -- sys_close
  ; -- Call("drop<bool>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_bool_ ; -- drop<bool>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn File.exists
fn_File_dot_exists:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 160 }
  sub qword [frame_end_ptr], 160
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 18, data_width: 8 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 168
  mov [rax], rbx
  sub rax, 8
  mov rbx, 18
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u64_ ; -- memset<u64>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.null_terminate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_null__terminate ; -- String.null_terminate
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_stat")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__stat ; -- sys_stat
  ; -- PushPtrToFrame { offset_from_end: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  push rax
  ; -- Call("String.delete")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_delete ; -- String.delete
  ; -- EndBlock { bytes_to_free: 240 }
  add qword [frame_end_ptr], 240
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn File.open
fn_File_dot_open:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.null_terminate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_null__terminate ; -- String.null_terminate
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_open")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__open ; -- sys_open
  ; -- PushPtrToFrame { offset_from_end: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  push rax
  ; -- Call("String.delete")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_delete ; -- String.delete
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn File.read_to_string
fn_File_dot_read__to__string:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("File.open")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_File_dot_open ; -- File.open
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("File.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_File_dot_size ; -- File.size
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- StartBlock
  ; -- Call("malloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_char_ ; -- malloc<char>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_read")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__read ; -- sys_read
  ; -- Call("drop<bool>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_bool_ ; -- drop<bool>
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("File.close")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_File_dot_close ; -- File.close
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 72 }
  add qword [frame_end_ptr], 72
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn File.size
fn_File_dot_size:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 160 }
  sub qword [frame_end_ptr], 160
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 18, data_width: 8 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 168
  mov [rax], rbx
  sub rax, 8
  mov rbx, 18
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u64_ ; -- memset<u64>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_fstat")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__fstat ; -- sys_fstat
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_File_dot_size_jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(6)
  push 6
  ; -- Call("ptr+<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__u64_ ; -- ptr+<u64>
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_File_dot_size_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_File_dot_size_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(23)
  push 23
  ; -- PushGlobal { id: "str_17" }
  push str_17
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_File_dot_size_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_File_dot_size_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 192 }
  add qword [frame_end_ptr], 192
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Game.from_line
fn_Game_dot_from__line:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Str.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_at ; -- Str.at
  ; -- PushU64(2)
  push 2
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Str.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_at ; -- Str.at
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Plays.from_char")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Plays_dot_from__char ; -- Plays.from_char
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Plays.from_char")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Plays_dot_from__char ; -- Plays.from_char
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Game.play
fn_Game_dot_play:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Game_dot_play_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Game_dot_play_jmp_dest_2
  ; -- JumpDest { id: 0 }
fn_Game_dot_play_jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Game_dot_play_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Game_dot_play_jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_Game_dot_play_jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Game_dot_play_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_Game_dot_play_jmp_dest_2:
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Game.score
fn_Game_dot_score:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Plays.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Plays_dot_score ; -- Plays.score
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Game.play")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_play ; -- Game.play
  ; -- Call("State.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_State_dot_score ; -- State.score
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Heap.debug_summary
fn_Heap_dot_debug__summary:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_18" }
  push str_18
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_Heap_dot_debug__summary_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Heap_dot_debug__summary_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_19" }
  push str_19
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Chunk_ ; -- Arr.get<Chunk>
  ; -- Call("Chunk.print")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_print ; -- Chunk.print
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_Heap_dot_debug__summary_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_Heap_dot_debug__summary_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<*Chunk>
fn_Opt_dot_None__star_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<Arr<u8>>
fn_Opt_dot_None_Arr_u8__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<Game>
fn_Opt_dot_None_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<Part2Game>
fn_Opt_dot_None_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<String>
fn_Opt_dot_None_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.None<char>
fn_Opt_dot_None_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<*Chunk>
fn_Opt_dot_Some__star_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<Arr<u8>>
fn_Opt_dot_Some_Arr_u8__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<Game>
fn_Opt_dot_Some_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<Part2Game>
fn_Opt_dot_Some_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<String>
fn_Opt_dot_Some_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.Some<char>
fn_Opt_dot_Some_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<*Chunk>
fn_Opt_dot_is__none__star_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<Arr<u8>>
fn_Opt_dot_is__none_Arr_u8__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<Game>
fn_Opt_dot_is__none_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<Part2Game>
fn_Opt_dot_is__none_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<String>
fn_Opt_dot_is__none_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_none<char>
fn_Opt_dot_is__none_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_some<*Chunk>
fn_Opt_dot_is__some__star_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.is_some<Arr<u8>>
fn_Opt_dot_is__some_Arr_u8__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<*Chunk>
fn_Opt_dot_unwrap__star_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none__star_Chunk_ ; -- Opt.is_none<*Chunk>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap__star_Chunk__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_20" }
  push str_20
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap__star_Chunk__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap__star_Chunk__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<Arr<u8>>
fn_Opt_dot_unwrap_Arr_u8__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap_Arr_u8___jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_21" }
  push str_21
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap_Arr_u8___jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap_Arr_u8___jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<Game>
fn_Opt_dot_unwrap_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Game_ ; -- Opt.is_none<Game>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap_Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_22" }
  push str_22
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap_Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap_Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<Part2Game>
fn_Opt_dot_unwrap_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Part2Game_ ; -- Opt.is_none<Part2Game>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_23" }
  push str_23
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap_Part2Game__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<String>
fn_Opt_dot_unwrap_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 4 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_String_ ; -- Opt.is_none<String>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap_String__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_24" }
  push str_24
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap_String__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap_String__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Opt.unwrap<char>
fn_Opt_dot_unwrap_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_char_ ; -- Opt.is_none<char>
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Opt_dot_unwrap_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_25" }
  push str_25
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Opt_dot_unwrap_char__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Opt_dot_unwrap_char__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn PAGE_SIZE
fn_PAGE__SIZE:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(4096)
  push 4096
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Part2Game.deterime_play
fn_Part2Game_dot_deterime__play:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Call("Game.play")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_play ; -- Game.play
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Part2Game_dot_deterime__play_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Part2Game_dot_deterime__play_jmp_dest_3
  ; -- JumpDest { id: 0 }
fn_Part2Game_dot_deterime__play_jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Call("Game.play")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_play ; -- Game.play
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Part2Game_dot_deterime__play_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Part2Game_dot_deterime__play_jmp_dest_3
  ; -- JumpDest { id: 1 }
fn_Part2Game_dot_deterime__play_jmp_dest_1:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(2)
  push 2
  ; -- Call("Game.play")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_play ; -- Game.play
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Part2Game_dot_deterime__play_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Part2Game_dot_deterime__play_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_Part2Game_dot_deterime__play_jmp_dest_2:
  ; -- StartBlock
  ; -- PushU64(11)
  push 11
  ; -- PushGlobal { id: "str_26" }
  push str_26
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Part2Game_dot_deterime__play_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Part2Game_dot_deterime__play_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Part2Game.from_line
fn_Part2Game_dot_from__line:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Str.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_at ; -- Str.at
  ; -- PushU64(2)
  push 2
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Str.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_at ; -- Str.at
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Plays.from_char")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Plays_dot_from__char ; -- Plays.from_char
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("State.from_char")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_State_dot_from__char ; -- State.from_char
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Part2Game.score
fn_Part2Game_dot_score:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Part2Game.deterime_play")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Part2Game_dot_deterime__play ; -- Part2Game.deterime_play
  ; -- Call("Plays.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Plays_dot_score ; -- Plays.score
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("State.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_State_dot_score ; -- State.score
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Plays.from_char
fn_Plays_dot_from__char:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(65)
  push 65
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushU64(88)
  push 88
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Plays_dot_from__char_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Plays_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 0 }
fn_Plays_dot_from__char_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(66)
  push 66
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushU64(89)
  push 89
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Plays_dot_from__char_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Plays_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 1 }
fn_Plays_dot_from__char_jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(67)
  push 67
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- PushU64(90)
  push 90
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("lor")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lor ; -- lor
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Plays_dot_from__char_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Plays_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_Plays_dot_from__char_jmp_dest_2:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(12)
  push 12
  ; -- PushGlobal { id: "str_27" }
  push str_27
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__char_ ; -- print<T><char>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_28" }
  push str_28
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Plays_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Plays_dot_from__char_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Plays.score
fn_Plays_dot_score:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Plays_dot_score_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Plays_dot_score_jmp_dest_2
  ; -- JumpDest { id: 0 }
fn_Plays_dot_score_jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Plays_dot_score_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Plays_dot_score_jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_Plays_dot_score_jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(3)
  push 3
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Plays_dot_score_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_Plays_dot_score_jmp_dest_2:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn State.from_char
fn_State_dot_from__char:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(88)
  push 88
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_State_dot_from__char_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_State_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 0 }
fn_State_dot_from__char_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(89)
  push 89
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_State_dot_from__char_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_State_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 1 }
fn_State_dot_from__char_jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(90)
  push 90
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_State_dot_from__char_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_State_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_State_dot_from__char_jmp_dest_2:
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- PushU64(12)
  push 12
  ; -- PushGlobal { id: "str_29" }
  push str_29
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__char_ ; -- print<T><char>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_30" }
  push str_30
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_State_dot_from__char_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_State_dot_from__char_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn State.score
fn_State_dot_score:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_State_dot_score_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(6)
  push 6
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_State_dot_score_jmp_dest_2
  ; -- JumpDest { id: 0 }
fn_State_dot_score_jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_State_dot_score_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(3)
  push 3
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_State_dot_score_jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_State_dot_score_jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_State_dot_score_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_State_dot_score_jmp_dest_2:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Str.at
fn_Str_dot_at:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_at_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(45)
  push 45
  ; -- PushGlobal { id: "str_31" }
  push str_31
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Str_dot_at_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Str_dot_at_jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Str.equals
fn_Str_dot_equals:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: BangEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovne rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_equals_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Str_dot_equals_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Str_dot_equals_jmp_dest_0:
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 1 }
fn_Str_dot_equals_jmp_dest_1:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_equals_jmp_dest_2
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- Operator { op: BangEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovne rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_equals_jmp_dest_3
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Str_dot_equals_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Str_dot_equals_jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 1 }
  jmp fn_Str_dot_equals_jmp_dest_1
  ; -- JumpDest { id: 2 }
fn_Str_dot_equals_jmp_dest_2:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Str.parse_u64
fn_Str_dot_parse__u64:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_Str_dot_parse__u64_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_parse__u64_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  push rax
  ; -- Call("Str.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_at ; -- Str.at
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("char.is_numeric")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_is__numeric ; -- char.is_numeric
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_parse__u64_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(10)
  push 10
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("char.parse_u8")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_parse__u8 ; -- char.parse_u8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Str_dot_parse__u64_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_Str_dot_parse__u64_jmp_dest_2:
  ; -- StartBlock
  ; -- PushU64(41)
  push 41
  ; -- PushGlobal { id: "str_32" }
  push str_32
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_33" }
  push str_33
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(6)
  push 6
  ; -- PushGlobal { id: "str_34" }
  push str_34
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__char_ ; -- print<T><char>
  ; -- PushU64(16)
  push 16
  ; -- PushGlobal { id: "str_35" }
  push str_35
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_Str_dot_parse__u64_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_Str_dot_parse__u64_jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 0 }
  jmp fn_Str_dot_parse__u64_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_Str_dot_parse__u64_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Str.starts_with
fn_Str_dot_starts__with:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovg rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Str_dot_starts__with_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Str_dot_starts__with_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Str_dot_starts__with_jmp_dest_0:
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Str.substr")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_substr ; -- Str.substr
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Str.equals")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Str_dot_equals ; -- Str.equals
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Str.substr
fn_Str_dot_substr:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.as_str
fn_String_dot_as__str:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.at
fn_String_dot_at:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("Vec.at<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_at_char_ ; -- Vec.at<char>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.clone
fn_String_dot_clone:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.delete
fn_String_dot_delete:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("free<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_char_ ; -- free<char>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.format
fn_String_dot_format:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_String_dot_format_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_String_dot_format_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 4 }
  mov rax, [frame_end_ptr]
  add rax, 32
  push rax
  ; -- Call("Vec.at<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_at_char_ ; -- Vec.at<char>
  ; -- Call("Opt.unwrap<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_char_ ; -- Opt.unwrap<char>
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_String_dot_format_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_String_dot_format_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("String.delete")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_delete ; -- String.delete
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.new
fn_String_dot_new:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- StartBlock
  ; -- Call("malloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_char_ ; -- malloc<char>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_String_dot_new_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_String_dot_new_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- PushPtrToFrame { offset_from_end: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_String_dot_new_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_String_dot_new_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.null_terminate
fn_String_dot_null__terminate:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- PushU64(0)
  push 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.push
fn_String_dot_push:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.push_str
fn_String_dot_push__str:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_String_dot_push__str_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_String_dot_push__str_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- PushPtrToFrame { offset_from_end: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_String_dot_push__str_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_String_dot_push__str_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.size
fn_String_dot_size:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("Vec.len<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_len_char_ ; -- Vec.len<char>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn String.substr
fn_String_dot_substr:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_String_dot_substr_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(33)
  push 33
  ; -- PushGlobal { id: "str_36" }
  push str_36
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__u64_ ; -- print<T><u64>
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_37" }
  push str_37
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__u64_ ; -- print<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_38" }
  push str_38
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_String_dot_substr_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_String_dot_substr_jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_String_dot_substr_jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_String_dot_substr_jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_String_dot_substr_jmp_dest_1:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_String_dot_substr_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_String_dot_substr_jmp_dest_2:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_String_dot_substr_jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_String_dot_substr_jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_String_dot_substr_jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_String_dot_substr_jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_String_dot_substr_jmp_dest_4:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("Vec.subslice<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_subslice_char_ ; -- Vec.subslice<char>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.at<char>
fn_Vec_dot_at_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_at_char__jmp_dest_0
  ; -- StartBlock
  ; -- Call("Opt.None<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_char_ ; -- Opt.None<char>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_at_char__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_at_char__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.get<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_char_ ; -- Arr.get<char>
  ; -- Call("Opt.Some<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_char_ ; -- Opt.Some<char>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_at_char__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_at_char__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.delete<char>
fn_Vec_dot_delete_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("free<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_char_ ; -- free<char>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.is_empty<Game>
fn_Vec_dot_is__empty_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.is_empty<Part2Game>
fn_Vec_dot_is__empty_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.is_empty<String>
fn_Vec_dot_is__empty_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.len<char>
fn_Vec_dot_len_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.new<Game>
fn_Vec_dot_new_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Game_ ; -- malloc<Game>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.new<Part2Game>
fn_Vec_dot_new_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Part2Game_ ; -- malloc<Part2Game>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.new<String>
fn_Vec_dot_new_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_String_ ; -- malloc<String>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.pop<Game>
fn_Vec_dot_pop_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_pop_Game__jmp_dest_0
  ; -- StartBlock
  ; -- Call("Opt.None<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Game_ ; -- Opt.None<Game>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_pop_Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.get<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Game_ ; -- Arr.get<Game>
  ; -- Call("Opt.Some<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_Game_ ; -- Opt.Some<Game>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_pop_Game__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.pop<Part2Game>
fn_Vec_dot_pop_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_pop_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- Call("Opt.None<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Part2Game_ ; -- Opt.None<Part2Game>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_pop_Part2Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.get<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Part2Game_ ; -- Arr.get<Part2Game>
  ; -- Call("Opt.Some<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_Part2Game_ ; -- Opt.Some<Part2Game>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_pop_Part2Game__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.pop<String>
fn_Vec_dot_pop_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_pop_String__jmp_dest_0
  ; -- StartBlock
  ; -- Call("Opt.None<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_String_ ; -- Opt.None<String>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_String__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_pop_String__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.get<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_String_ ; -- Arr.get<String>
  ; -- Call("Opt.Some<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some_String_ ; -- Opt.Some<String>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_pop_String__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_pop_String__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.push<Game>
fn_Vec_dot_push_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_Game_ ; -- realloc<Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_push_Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_Game_ ; -- realloc<Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_push_Game__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.set<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_set_Game_ ; -- Arr.set<Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.push<Part2Game>
fn_Vec_dot_push_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_Part2Game_ ; -- realloc<Part2Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_push_Part2Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_Part2Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_Part2Game_ ; -- realloc<Part2Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_push_Part2Game__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.set<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_set_Part2Game_ ; -- Arr.set<Part2Game>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.push<String>
fn_Vec_dot_push_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_String__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_String_ ; -- realloc<String>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_String__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_push_String__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_String__jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_String_ ; -- realloc<String>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_String__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_push_String__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.set<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_set_String_ ; -- Arr.set<String>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.push<char>
fn_Vec_dot_push_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_char_ ; -- realloc<char>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_char__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_Vec_dot_push_char__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_push_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(2)
  push 2
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("realloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_realloc_char_ ; -- realloc<char>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_Vec_dot_push_char__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_Vec_dot_push_char__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("Arr.set<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_set_char_ ; -- Arr.set<char>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.slice<char>
fn_Vec_dot_slice_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.slice_mut<char>
fn_Vec_dot_slice__mut_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.subslice<char>
fn_Vec_dot_subslice_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_subslice_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(45)
  push 45
  ; -- PushGlobal { id: "str_39" }
  push str_39
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(7)
  push 7
  ; -- PushGlobal { id: "str_40" }
  push str_40
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(7)
  push 7
  ; -- PushGlobal { id: "str_41" }
  push str_41
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_Vec_dot_subslice_char__jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_Vec_dot_subslice_char__jmp_dest_0:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Vec.len<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_len_char_ ; -- Vec.len<char>
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_subslice_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Vec.len<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_len_char_ ; -- Vec.len<char>
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Vec_dot_subslice_char__jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_Vec_dot_subslice_char__jmp_dest_1:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_Vec_dot_subslice_char__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_Vec_dot_subslice_char__jmp_dest_2:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Vec.len<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_len_char_ ; -- Vec.len<char>
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_Vec_dot_subslice_char__jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Vec.len<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_len_char_ ; -- Vec.len<char>
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_Vec_dot_subslice_char__jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_Vec_dot_subslice_char__jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_Vec_dot_subslice_char__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_Vec_dot_subslice_char__jmp_dest_4:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn Vec.with_capacity<char>
fn_Vec_dot_with__capacity_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("malloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_char_ ; -- malloc<char>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn add<char char char>
fn_add_char_char_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn add<u64 u64 u64>
fn_add_u64_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn add<u64 u8 u64>
fn_add_u64_u8_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn add<u8 u64 u64>
fn_add_u8_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn add<u8 u8 u8>
fn_add_u8_u8_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn align
fn_align:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("bytes_to_pages")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_bytes__to__pages ; -- bytes_to_pages
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn arr_convert<Game>
fn_arr__convert_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn arr_convert<Part2Game>
fn_arr__convert_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn arr_convert<String>
fn_arr__convert_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn arr_convert<char>
fn_arr__convert_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn assert
fn_assert:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_assert_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(16)
  push 16
  ; -- PushGlobal { id: "str_42" }
  push str_42
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_assert_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_assert_jmp_dest_0:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn bool.to_str
fn_bool_dot_to__str:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_bool_dot_to__str_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_43" }
  push str_43
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_bool_dot_to__str_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_bool_dot_to__str_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_44" }
  push str_44
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_bool_dot_to__str_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_bool_dot_to__str_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn build_games
fn_build__games:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Game_ ; -- malloc<Game>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- JumpDest { id: 0 }
fn_build__games_jmp_dest_0:
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_build__games_jmp_dest_1
  ; -- StartBlock
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("Vec.pop<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_pop_String_ ; -- Vec.pop<String>
  ; -- Call("Opt.unwrap<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_String_ ; -- Opt.unwrap<String>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- Call("Game.from_line")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_from__line ; -- Game.from_line
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("Vec.push<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_Game_ ; -- Vec.push<Game>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_build__games_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_build__games_jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn build_games_part2
fn_build__games__part2:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Part2Game_ ; -- malloc<Part2Game>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- JumpDest { id: 0 }
fn_build__games__part2_jmp_dest_0:
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_build__games__part2_jmp_dest_1
  ; -- StartBlock
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("Vec.pop<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_pop_String_ ; -- Vec.pop<String>
  ; -- Call("Opt.unwrap<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_String_ ; -- Opt.unwrap<String>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- Call("Part2Game.from_line")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Part2Game_dot_from__line ; -- Part2Game.from_line
  ; -- PushPtrToFrame { offset_from_end: 3 }
  mov rax, [frame_end_ptr]
  add rax, 24
  push rax
  ; -- Call("Vec.push<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_Part2Game_ ; -- Vec.push<Part2Game>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_build__games__part2_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_build__games__part2_jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn bytes_to_pages
fn_bytes__to__pages:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn char.as_str
fn_char_dot_as__str:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- Call("swap<&char u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_swap__amp_char_u64_ ; -- swap<&char u64>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn char.is_numeric
fn_char_dot_is__numeric:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(48)
  push 48
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- PushU64(57)
  push 57
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn char.parse_u8
fn_char_dot_parse__u8:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("char.is_numeric")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_is__numeric ; -- char.is_numeric
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_char_dot_parse__u8_jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(48)
  push 48
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_char_dot_parse__u8_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_char_dot_parse__u8_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- PushU64(39)
  push 39
  ; -- PushGlobal { id: "str_45" }
  push str_45
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__char_ ; -- println<T><char>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_char_dot_parse__u8_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_char_dot_parse__u8_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn div<u64 u64 u64>
fn_div_u64_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn div<u64 u8 u64>
fn_div_u64_u8_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn div<u8 u64 u8>
fn_div_u8_u64_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn div<u8 u8 u8>
fn_div_u8_u8_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn drop<*Block>
fn_drop__star_Block_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn drop<Opt<*Chunk>>
fn_drop_Opt__star_Chunk__:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn drop<Opt<Arr<u8>>>
fn_drop_Opt_Arr_u8___:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn drop<bool>
fn_drop_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn drop<u64>
fn_drop_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn dup<*Block>
fn_dup__star_Block_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn dup<u64>
fn_dup_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn exit
fn_exit:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("sys_exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__exit ; -- sys_exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn find_chunk<Game>
fn_find__chunk_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_find__chunk_Game__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none__star_Chunk_ ; -- Opt.is_none<*Chunk>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<*Chunk>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt__star_Chunk__ ; -- drop<Opt<*Chunk>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Chunk_ ; -- Arr.get<Chunk>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_Game__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- Call("Opt.Some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some__star_Chunk_ ; -- Opt.Some<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_Game__jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_find__chunk_Game__jmp_dest_2:
  ; -- StartBlock
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_Game__jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_find__chunk_Game__jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_find__chunk_Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_find__chunk_Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn find_chunk<Part2Game>
fn_find__chunk_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_find__chunk_Part2Game__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none__star_Chunk_ ; -- Opt.is_none<*Chunk>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_Part2Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<*Chunk>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt__star_Chunk__ ; -- drop<Opt<*Chunk>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Chunk_ ; -- Arr.get<Chunk>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_Part2Game__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- Call("Opt.Some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some__star_Chunk_ ; -- Opt.Some<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_Part2Game__jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_find__chunk_Part2Game__jmp_dest_2:
  ; -- StartBlock
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_Part2Game__jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_find__chunk_Part2Game__jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_find__chunk_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_find__chunk_Part2Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn find_chunk<String>
fn_find__chunk_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_find__chunk_String__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none__star_Chunk_ ; -- Opt.is_none<*Chunk>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_String__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<*Chunk>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt__star_Chunk__ ; -- drop<Opt<*Chunk>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Chunk_ ; -- Arr.get<Chunk>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_String__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- Call("Opt.Some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some__star_Chunk_ ; -- Opt.Some<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_String__jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_find__chunk_String__jmp_dest_2:
  ; -- StartBlock
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_String__jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_find__chunk_String__jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_find__chunk_String__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_find__chunk_String__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn find_chunk<char>
fn_find__chunk_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_find__chunk_char__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none__star_Chunk_ ; -- Opt.is_none<*Chunk>
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<*Chunk>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt__star_Chunk__ ; -- drop<Opt<*Chunk>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get_Chunk_ ; -- Arr.get<Chunk>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_find__chunk_char__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- Call("Opt.Some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_Some__star_Chunk_ ; -- Opt.Some<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_char__jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_find__chunk_char__jmp_dest_2:
  ; -- StartBlock
  ; -- Call("Opt.None<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None__star_Chunk_ ; -- Opt.None<*Chunk>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_find__chunk_char__jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_find__chunk_char__jmp_dest_3:
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_find__chunk_char__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_find__chunk_char__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<&bool>
fn_fmt__amp_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- StartBlock
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_fmt__amp_bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_46" }
  push str_46
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_fmt__amp_bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_fmt__amp_bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_47" }
  push str_47
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_fmt__amp_bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_fmt__amp_bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<&char>
fn_fmt__amp_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<&u64>
fn_fmt__amp_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<&u8>
fn_fmt__amp_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- StartBlock
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<Str>
fn_fmt_Str_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<bool>
fn_fmt_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_fmt_bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_48" }
  push str_48
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_fmt_bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_fmt_bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_49" }
  push str_49
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_fmt_bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_fmt_bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<char>
fn_fmt_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.push<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_char_ ; -- Vec.push<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<u64>
fn_fmt_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 56 }
  add qword [frame_end_ptr], 56
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn fmt<u8>
fn_fmt_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.push_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_push__str ; -- String.push_str
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn free<Game>
fn_free_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("find_chunk<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_find__chunk_Game_ ; -- find_chunk<Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some__star_Chunk_ ; -- Opt.is_some<*Chunk>
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_free_Game__jmp_dest_4
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap__star_Chunk_ ; -- Opt.unwrap<*Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_free_Game__jmp_dest_0:
  ; -- Call("dup<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup__star_Block_ ; -- dup<*Block>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_free_Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_free_Game__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.consolidate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_consolidate ; -- Chunk.consolidate
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 2 }
  jmp fn_free_Game__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_free_Game__jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_free_Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_free_Game__jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Jump { dest_id: 4 }
  jmp fn_free_Game__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_free_Game__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn free<Part2Game>
fn_free_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("find_chunk<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_find__chunk_Part2Game_ ; -- find_chunk<Part2Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some__star_Chunk_ ; -- Opt.is_some<*Chunk>
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_free_Part2Game__jmp_dest_4
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap__star_Chunk_ ; -- Opt.unwrap<*Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_free_Part2Game__jmp_dest_0:
  ; -- Call("dup<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup__star_Block_ ; -- dup<*Block>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_free_Part2Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_free_Part2Game__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.consolidate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_consolidate ; -- Chunk.consolidate
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 2 }
  jmp fn_free_Part2Game__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_free_Part2Game__jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_free_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_free_Part2Game__jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Jump { dest_id: 4 }
  jmp fn_free_Part2Game__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_free_Part2Game__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn free<String>
fn_free_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("find_chunk<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_find__chunk_String_ ; -- find_chunk<String>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some__star_Chunk_ ; -- Opt.is_some<*Chunk>
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_free_String__jmp_dest_4
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap__star_Chunk_ ; -- Opt.unwrap<*Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_free_String__jmp_dest_0:
  ; -- Call("dup<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup__star_Block_ ; -- dup<*Block>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_free_String__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_free_String__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.consolidate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_consolidate ; -- Chunk.consolidate
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 2 }
  jmp fn_free_String__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_free_String__jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_free_String__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_free_String__jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Jump { dest_id: 4 }
  jmp fn_free_String__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_free_String__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn free<char>
fn_free_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("find_chunk<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_find__chunk_char_ ; -- find_chunk<char>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some__star_Chunk_ ; -- Opt.is_some<*Chunk>
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_free_char__jmp_dest_4
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<*Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap__star_Chunk_ ; -- Opt.unwrap<*Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 0 }
fn_free_char__jmp_dest_0:
  ; -- Call("dup<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup__star_Block_ ; -- dup<*Block>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovle rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_free_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_free_char__jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.consolidate")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_consolidate ; -- Chunk.consolidate
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 2 }
  jmp fn_free_char__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_free_char__jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.next")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_next ; -- Chunk.next
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_free_char__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_free_char__jmp_dest_1:
  ; -- Call("drop<*Block>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop__star_Block_ ; -- drop<*Block>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Jump { dest_id: 4 }
  jmp fn_free_char__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_free_char__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn land
fn_land:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_land_jmp_dest_2
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_land_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_land_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_land_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_land_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_land_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_land_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_land_jmp_dest_2:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_land_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_land_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn lnot
fn_lnot:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_lnot_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_lnot_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_lnot_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_lnot_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_lnot_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn lor
fn_lor:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_lor_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_lor_jmp_dest_3
  ; -- JumpDest { id: 2 }
fn_lor_jmp_dest_2:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_lor_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_lor_jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_lor_jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_lor_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_lor_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 3 }
  jmp fn_lor_jmp_dest_3
  ; -- JumpDest { id: 3 }
fn_lor_jmp_dest_3:
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn main
fn_main:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_50" }
  push str_50
  ; -- Call("part1")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_part1 ; -- part1
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(16)
  push 16
  ; -- PushGlobal { id: "str_51" }
  push str_51
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(15)
  push 15
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("assert")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_assert ; -- assert
  ; -- PushU64(22)
  push 22
  ; -- PushGlobal { id: "str_52" }
  push str_52
  ; -- Call("part1")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_part1 ; -- part1
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(15)
  push 15
  ; -- PushGlobal { id: "str_53" }
  push str_53
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(12855)
  push 12855
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("assert")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_assert ; -- assert
  ; -- PushU64(24)
  push 24
  ; -- PushGlobal { id: "str_54" }
  push str_54
  ; -- Call("part2")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_part2 ; -- part2
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(16)
  push 16
  ; -- PushGlobal { id: "str_55" }
  push str_55
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(12)
  push 12
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- Call("assert")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_assert ; -- assert
  ; -- PushU64(22)
  push 22
  ; -- PushGlobal { id: "str_56" }
  push str_56
  ; -- Call("part2")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_part2 ; -- part2
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(15)
  push 15
  ; -- PushGlobal { id: "str_57" }
  push str_57
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("println<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__u64_ ; -- println<T><u64>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn malloc<Game>
fn_malloc_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 5 }
  pop  rax
  test rax, rax
  jz fn_malloc_Game__jmp_dest_5
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("swap<*Chunk u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_swap__star_Chunk_u64_ ; -- swap<*Chunk u64>
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_Game__jmp_dest_6
  ; -- JumpDest { id: 5 }
fn_malloc_Game__jmp_dest_5:
  ; -- StartBlock
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_malloc_Game__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_malloc_Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<Arr<u8>>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt_Arr_u8___ ; -- drop<Opt<Arr<u8>>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 0 }
  jmp fn_malloc_Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_malloc_Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some_Arr_u8__ ; -- Opt.is_some<Arr<u8>>
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_malloc_Game__jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_Game__jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_malloc_Game__jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_Game__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_malloc_Game__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_Game__jmp_dest_6
  ; -- JumpDest { id: 6 }
fn_malloc_Game__jmp_dest_6:
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u8>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u8_ ; -- memset<u8>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("arr_convert<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_arr__convert_Game_ ; -- arr_convert<Game>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn malloc<Part2Game>
fn_malloc_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 5 }
  pop  rax
  test rax, rax
  jz fn_malloc_Part2Game__jmp_dest_5
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("swap<*Chunk u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_swap__star_Chunk_u64_ ; -- swap<*Chunk u64>
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_Part2Game__jmp_dest_6
  ; -- JumpDest { id: 5 }
fn_malloc_Part2Game__jmp_dest_5:
  ; -- StartBlock
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_malloc_Part2Game__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_malloc_Part2Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<Arr<u8>>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt_Arr_u8___ ; -- drop<Opt<Arr<u8>>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 0 }
  jmp fn_malloc_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_malloc_Part2Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some_Arr_u8__ ; -- Opt.is_some<Arr<u8>>
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_malloc_Part2Game__jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_Part2Game__jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_malloc_Part2Game__jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_Part2Game__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_malloc_Part2Game__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_Part2Game__jmp_dest_6
  ; -- JumpDest { id: 6 }
fn_malloc_Part2Game__jmp_dest_6:
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u8>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u8_ ; -- memset<u8>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("arr_convert<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_arr__convert_Part2Game_ ; -- arr_convert<Part2Game>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn malloc<String>
fn_malloc_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 5 }
  pop  rax
  test rax, rax
  jz fn_malloc_String__jmp_dest_5
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("swap<*Chunk u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_swap__star_Chunk_u64_ ; -- swap<*Chunk u64>
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_String__jmp_dest_6
  ; -- JumpDest { id: 5 }
fn_malloc_String__jmp_dest_5:
  ; -- StartBlock
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_malloc_String__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_malloc_String__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<Arr<u8>>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt_Arr_u8___ ; -- drop<Opt<Arr<u8>>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 0 }
  jmp fn_malloc_String__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_malloc_String__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some_Arr_u8__ ; -- Opt.is_some<Arr<u8>>
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_malloc_String__jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_String__jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_malloc_String__jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_String__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_malloc_String__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_String__jmp_dest_6
  ; -- JumpDest { id: 6 }
fn_malloc_String__jmp_dest_6:
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u8>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u8_ ; -- memset<u8>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("arr_convert<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_arr__convert_String_ ; -- arr_convert<String>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn malloc<char>
fn_malloc_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 5 }
  pop  rax
  test rax, rax
  jz fn_malloc_char__jmp_dest_5
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("swap<*Chunk u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_swap__star_Chunk_u64_ ; -- swap<*Chunk u64>
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_char__jmp_dest_6
  ; -- JumpDest { id: 5 }
fn_malloc_char__jmp_dest_5:
  ; -- StartBlock
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("Opt.None<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_None_Arr_u8__ ; -- Opt.None<Arr<u8>>
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_malloc_char__jmp_dest_0:
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_none<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__none_Arr_u8__ ; -- Opt.is_none<Arr<u8>>
  ; -- Call("land")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_land ; -- land
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_malloc_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- Call("drop<Opt<Arr<u8>>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_Opt_Arr_u8___ ; -- drop<Opt<Arr<u8>>>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 0 }
  jmp fn_malloc_char__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_malloc_char__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Opt.is_some<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_is__some_Arr_u8__ ; -- Opt.is_some<Arr<u8>>
  ; -- JumpFalse { dest_id: 3 }
  pop  rax
  test rax, rax
  jz fn_malloc_char__jmp_dest_3
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_char__jmp_dest_4
  ; -- JumpDest { id: 3 }
fn_malloc_char__jmp_dest_3:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 6, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 48
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("align")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_align ; -- align
  ; -- Call("mmap_new_chunk")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_mmap__new__chunk ; -- mmap_new_chunk
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 7, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 56
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Chunk.try_alloc")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Chunk_dot_try__alloc ; -- Chunk.try_alloc
  ; -- Call("Opt.unwrap<Arr<u8>>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Arr_u8__ ; -- Opt.unwrap<Arr<u8>>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 4 }
  jmp fn_malloc_char__jmp_dest_4
  ; -- JumpDest { id: 4 }
fn_malloc_char__jmp_dest_4:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Jump { dest_id: 6 }
  jmp fn_malloc_char__jmp_dest_6
  ; -- JumpDest { id: 6 }
fn_malloc_char__jmp_dest_6:
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memset<u8>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memset_u8_ ; -- memset<u8>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("arr_convert<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_arr__convert_char_ ; -- arr_convert<char>
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memcpy<Game>
fn_memcpy_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memcpy_Game__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memcpy_Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__Game_ ; -- ptr+<Game>
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Game_ ; -- ptr+_mut<Game>
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memcpy_Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memcpy_Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memcpy<Part2Game>
fn_memcpy_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memcpy_Part2Game__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memcpy_Part2Game__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__Part2Game_ ; -- ptr+<Part2Game>
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_Part2Game_ ; -- ptr+_mut<Part2Game>
  ; -- Operator { op: Write, size: Some((2, 8)) }
  pop  rax
  add  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memcpy_Part2Game__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memcpy_Part2Game__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memcpy<String>
fn_memcpy_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memcpy_String__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memcpy_String__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__String_ ; -- ptr+<String>
  ; -- Operator { op: Read, size: Some((3, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_String_ ; -- ptr+_mut<String>
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memcpy_String__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memcpy_String__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memcpy<char>
fn_memcpy_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memcpy_char__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memcpy_char__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_char_ ; -- ptr+_mut<char>
  ; -- Operator { op: Write, size: Some((1, 1)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], bl
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memcpy_char__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memcpy_char__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memset<u64>
fn_memset_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memset_u64__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memset_u64__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_u64_ ; -- ptr+_mut<u64>
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memset_u64__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memset_u64__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn memset<u8>
fn_memset_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_memset_u8__jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_memset_u8__jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<u8>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_u8_ ; -- ptr+_mut<u8>
  ; -- Operator { op: Write, size: Some((1, 1)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], bl
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_memset_u8__jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_memset_u8__jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn mmap_new_chunk
fn_mmap__new__chunk:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("PAGE_SIZE")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_PAGE__SIZE ; -- PAGE_SIZE
  ; -- Operator { op: Modulo, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rdx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: BangEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovne rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_mmap__new__chunk_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(6)
  push 6
  ; -- PushGlobal { id: "str_58" }
  push str_58
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__u64_ ; -- print<T><u64>
  ; -- PushU64(25)
  push 25
  ; -- PushGlobal { id: "str_59" }
  push str_59
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_mmap__new__chunk_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_mmap__new__chunk_jmp_dest_0:
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- PushU64(34)
  push 34
  ; -- PushU64(3)
  push 3
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushU64(0)
  push 0
  ; -- Call("sys_mmap")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__mmap ; -- sys_mmap
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_mmap__new__chunk_jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(26)
  push 26
  ; -- PushGlobal { id: "str_60" }
  push str_60
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_mmap__new__chunk_jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_mmap__new__chunk_jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Write, size: Some((3, 8)) }
  pop  rax
  add  rax, 16
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  sub  rax, 8
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushGlobal { id: "chunks_p" }
  push chunks_p
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_mmap__new__chunk_jmp_dest_2
  ; -- StartBlock
  ; -- PushU64(47)
  push 47
  ; -- PushGlobal { id: "str_61" }
  push str_61
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(32)
  push 32
  ; -- PushGlobal { id: "str_62" }
  push str_62
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_mmap__new__chunk_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_mmap__new__chunk_jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.set<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_set_Chunk_ ; -- Arr.set<Chunk>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- PushGlobal { id: "n_chunks_p" }
  push n_chunks_p
  ; -- Operator { op: Write, size: Some((1, 8)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], rbx
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Arr.get_ref_mut<Chunk>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Arr_dot_get__ref__mut_Chunk_ ; -- Arr.get_ref_mut<Chunk>
  ; -- EndBlock { bytes_to_free: 56 }
  add qword [frame_end_ptr], 56
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn mul<u64 u64 u64>
fn_mul_u64_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn mul<u64 u8 u64>
fn_mul_u64_u8_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn mul<u8 u64 u64>
fn_mul_u8_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn mul<u8 u8 u64>
fn_mul_u8_u8_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn part1
fn_part1:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("File.read_to_string")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_File_dot_read__to__string ; -- File.read_to_string
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("split_lines")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_split__lines ; -- split_lines
  ; -- Call("build_games")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_build__games ; -- build_games
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_part1_jmp_dest_0:
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_part1_jmp_dest_1
  ; -- StartBlock
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.pop<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_pop_Game_ ; -- Vec.pop<Game>
  ; -- Call("Opt.unwrap<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Game_ ; -- Opt.unwrap<Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Game.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Game_dot_score ; -- Game.score
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_part1_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_part1_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn part2
fn_part2:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("File.read_to_string")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_File_dot_read__to__string ; -- File.read_to_string
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("split_lines")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_split__lines ; -- split_lines
  ; -- Call("build_games_part2")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_build__games__part2 ; -- build_games_part2
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_part2_jmp_dest_0:
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Call("lnot")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_lnot ; -- lnot
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_part2_jmp_dest_1
  ; -- StartBlock
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("Vec.pop<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_pop_Part2Game_ ; -- Vec.pop<Part2Game>
  ; -- Call("Opt.unwrap<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_Part2Game_ ; -- Opt.unwrap<Part2Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("Part2Game.score")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Part2Game_dot_score ; -- Part2Game.score
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Jump { dest_id: 0 }
  jmp fn_part2_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_part2_jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<Game>
fn_print_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_63" }
  push str_63
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<Plays>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_Plays_ ; -- print<Plays>
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_64" }
  push str_64
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("print<Plays>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_Plays_ ; -- print<Plays>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<Plays>
fn_print_Plays_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_print_Plays__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_65" }
  push str_65
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_print_Plays__jmp_dest_2
  ; -- JumpDest { id: 0 }
fn_print_Plays__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_print_Plays__jmp_dest_1
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_66" }
  push str_66
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_print_Plays__jmp_dest_2
  ; -- JumpDest { id: 1 }
fn_print_Plays__jmp_dest_1:
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- PushGlobal { id: "str_67" }
  push str_67
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 2 }
  jmp fn_print_Plays__jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_print_Plays__jmp_dest_2:
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<T><Str>
fn_print_T__Str_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<T><bool>
fn_print_T__bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_print_T__bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_68" }
  push str_68
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_print_T__bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_print_T__bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_69" }
  push str_69
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_print_T__bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_print_T__bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<T><char>
fn_print_T__char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("char.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_as__str ; -- char.as_str
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn print<T><u64>
fn_print_T__u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- Call("write<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_u64_ ; -- write<u64>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<Game>
fn_println_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_Game_ ; -- print<Game>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_70" }
  push str_70
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<Plays>
fn_println_Plays_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<Plays>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_Plays_ ; -- print<Plays>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_71" }
  push str_71
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<T><Str>
fn_println_T__Str_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_72" }
  push str_72
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<T><bool>
fn_println_T__bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<T><bool>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__bool_ ; -- print<T><bool>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_73" }
  push str_73
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<T><char>
fn_println_T__char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<T><char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__char_ ; -- print<T><char>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_74" }
  push str_74
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn println<T><u64>
fn_println_T__u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("print<T><u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__u64_ ; -- print<T><u64>
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_75" }
  push str_75
  ; -- Call("print<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_print_T__Str_ ; -- print<T><Str>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<Chunk>
fn_ptr_plus__Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<Game>
fn_ptr_plus__Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<Part2Game>
fn_ptr_plus__Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<String>
fn_ptr_plus__String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<char>
fn_ptr_plus__char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+<u64>
fn_ptr_plus__u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<Chunk>
fn_ptr_plus___mut_Chunk_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<Game>
fn_ptr_plus___mut_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<Part2Game>
fn_ptr_plus___mut_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(16)
  push 16
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<String>
fn_ptr_plus___mut_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(24)
  push 24
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<char>
fn_ptr_plus___mut_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<u64>
fn_ptr_plus___mut_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(8)
  push 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn ptr+_mut<u8>
fn_ptr_plus___mut_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Star, size: None }
  pop  rcx
  pop  rax
  mul  rcx
  push rax
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn realloc<Game>
fn_realloc_Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("malloc<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Game_ ; -- malloc<Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_realloc_Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_realloc_Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_realloc_Game__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memcpy<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memcpy_Game_ ; -- memcpy<Game>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("free<Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_Game_ ; -- free<Game>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn realloc<Part2Game>
fn_realloc_Part2Game_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("malloc<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_Part2Game_ ; -- malloc<Part2Game>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_realloc_Part2Game__jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_realloc_Part2Game__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_Part2Game__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_realloc_Part2Game__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memcpy<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memcpy_Part2Game_ ; -- memcpy<Part2Game>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("free<Part2Game>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_Part2Game_ ; -- free<Part2Game>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn realloc<String>
fn_realloc_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("malloc<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_String_ ; -- malloc<String>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_realloc_String__jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_String__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_realloc_String__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_String__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_realloc_String__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memcpy<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memcpy_String_ ; -- memcpy<String>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("free<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_String_ ; -- free<String>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn realloc<char>
fn_realloc_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("malloc<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_char_ ; -- malloc<char>
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_realloc_char__jmp_dest_0
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_char__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_realloc_char__jmp_dest_0:
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_realloc_char__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_realloc_char__jmp_dest_1:
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memcpy<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memcpy_char_ ; -- memcpy<char>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("free<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_free_char_ ; -- free<char>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 2 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 40 }
  add qword [frame_end_ptr], 40
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn split_lines
fn_split__lines:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushU64(8)
  push 8
  ; -- Call("malloc<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_malloc_String_ ; -- malloc<String>
  ; -- PushU64(0)
  push 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(0)
  push 0
  ; -- PushU64(0)
  push 0
  ; -- JumpDest { id: 0 }
fn_split__lines_jmp_dest_0:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.size")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_size ; -- String.size
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 1 }
  pop  rax
  test rax, rax
  jz fn_split__lines_jmp_dest_1
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.at")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_at ; -- String.at
  ; -- Call("Opt.unwrap<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Opt_dot_unwrap_char_ ; -- Opt.unwrap<char>
  ; -- PushU64(10)
  push 10
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_split__lines_jmp_dest_2
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("String.substr")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_substr ; -- String.substr
  ; -- PushPtrToFrame { offset_from_end: 2 }
  mov rax, [frame_end_ptr]
  add rax, 16
  push rax
  ; -- Call("Vec.push<String>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_Vec_dot_push_String_ ; -- Vec.push<String>
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 2 }
  jmp fn_split__lines_jmp_dest_2
  ; -- JumpDest { id: 2 }
fn_split__lines_jmp_dest_2:
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 0 }
  jmp fn_split__lines_jmp_dest_0
  ; -- JumpDest { id: 1 }
fn_split__lines_jmp_dest_1:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushFromFrame { offset_from_end: 0, bytes: 3 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sub<u64 u64 u64>
fn_sub_u64_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sub<u64 u8 u64>
fn_sub_u64_u8_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sub<u8 u64 u64>
fn_sub_u8_u64_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sub<u8 u8 u8>
fn_sub_u8_u8_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn swap<&char u64>
fn_swap__amp_char_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn swap<*Chunk u64>
fn_swap__star_Chunk_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_close
fn_sys__close:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(3)
  push 3
  ; -- Syscall(1)
  pop  rax
  pop  rdi
  syscall
  push rax
  ; -- Call("sys_ok")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__ok ; -- sys_ok
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_exit
fn_sys__exit:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(60)
  push 60
  ; -- Syscall(1)
  pop  rax
  pop  rdi
  syscall
  push rax
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_fstat
fn_sys__fstat:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- Syscall(2)
  pop  rax
  pop  rdi
  pop  rsi
  syscall
  push rax
  ; -- Call("sys_ok")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__ok ; -- sys_ok
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_mmap
fn_sys__mmap:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 5, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 40
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(9)
  push 9
  ; -- Syscall(6)
  pop  rax
  pop  rdi
  pop  rsi
  pop  rdx
  pop  r10
  pop  r8
  pop  r9
  syscall
  push rax
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_ok
fn_sys__ok:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: GreaterEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovge rcx, rdx
  push rcx
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_open
fn_sys__open:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(2)
  push 2
  ; -- Syscall(3)
  pop  rax
  pop  rdi
  pop  rsi
  pop  rdx
  syscall
  push rax
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_read
fn_sys__read:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(0)
  push 0
  ; -- Syscall(3)
  pop  rax
  pop  rdi
  pop  rsi
  pop  rdx
  syscall
  push rax
  ; -- Call("sys_ok")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__ok ; -- sys_ok
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_stat
fn_sys__stat:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- Syscall(2)
  pop  rax
  pop  rdi
  pop  rsi
  syscall
  push rax
  ; -- Call("sys_ok")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__ok ; -- sys_ok
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn sys_write
fn_sys__write:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- Syscall(3)
  pop  rax
  pop  rdi
  pop  rsi
  pop  rdx
  syscall
  push rax
  ; -- Call("sys_ok")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__ok ; -- sys_ok
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<&String>
fn_to__string__amp_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("String.clone")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_clone ; -- String.clone
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<&bool>
fn_to__string__amp_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- StartBlock
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_to__string__amp_bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_76" }
  push str_76
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_to__string__amp_bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_to__string__amp_bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_77" }
  push str_77
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_to__string__amp_bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_to__string__amp_bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<&char>
fn_to__string__amp_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("char.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_as__str ; -- char.as_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<&u64>
fn_to__string__amp_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<&u8>
fn_to__string__amp_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- Operator { op: Read, size: Some((1, 1)) }
  pop  rax
  mov  rbx, 0
  mov  bl, [rax]
  push rbx
  ; -- StartBlock
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<Str>
fn_to__string_Str_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<String>
fn_to__string_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<bool>
fn_to__string_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_to__string_bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_78" }
  push str_78
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_to__string_bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_to__string_bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_79" }
  push str_79
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_to__string_bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_to__string_bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<char>
fn_to__string_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- StartBlock
  ; -- Call("char.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_as__str ; -- char.as_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<u64>
fn_to__string_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 56 }
  add qword [frame_end_ptr], 56
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn to_string<u8>
fn_to__string_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- StartBlock
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- Call("String.new")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_new ; -- String.new
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- EndBlock { bytes_to_free: 48 }
  add qword [frame_end_ptr], 48
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn u64.to_str
fn_u64_dot_to__str:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(20)
  push 20
  ; -- Operator { op: LessThan, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovl rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_u64_dot_to__str_jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(52)
  push 52
  ; -- PushGlobal { id: "str_80" }
  push str_80
  ; -- Call("println<T><Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_println_T__Str_ ; -- println<T><Str>
  ; -- PushU64(1)
  push 1
  ; -- Call("exit")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_exit ; -- exit
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 0 }
  jmp fn_u64_dot_to__str_jmp_dest_0
  ; -- JumpDest { id: 0 }
fn_u64_dot_to__str_jmp_dest_0:
  ; -- PushU64(0)
  push 0
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Equal, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmove rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 4 }
  pop  rax
  test rax, rax
  jz fn_u64_dot_to__str_jmp_dest_4
  ; -- StartBlock
  ; -- PushU64(1)
  push 1
  ; -- PushGlobal { id: "str_81" }
  push str_81
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- StartBlock
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("memcpy<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_memcpy_char_ ; -- memcpy<char>
  ; -- PushU64(1)
  push 1
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 5 }
  jmp fn_u64_dot_to__str_jmp_dest_5
  ; -- JumpDest { id: 4 }
fn_u64_dot_to__str_jmp_dest_4:
  ; -- StartBlock
  ; -- PushU64(19)
  push 19
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- JumpDest { id: 1 }
fn_u64_dot_to__str_jmp_dest_1:
  ; -- Call("dup<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_dup_u64_ ; -- dup<u64>
  ; -- PushU64(0)
  push 0
  ; -- Operator { op: BangEqual, size: None }
  mov  rcx, 0
  mov  rdx, 1
  pop  rbx
  pop  rax
  cmp  rax, rbx
  cmovne rcx, rdx
  push rcx
  ; -- JumpFalse { dest_id: 2 }
  pop  rax
  test rax, rax
  jz fn_u64_dot_to__str_jmp_dest_2
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(10)
  push 10
  ; -- Operator { op: Modulo, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rdx
  ; -- PushU64(48)
  push 48
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- PushFromFrame { offset_from_end: 4, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 32
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("ptr+_mut<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus___mut_char_ ; -- ptr+_mut<char>
  ; -- Operator { op: Write, size: Some((1, 1)) }
  pop  rax
  add  rax, 0
  pop  rbx
  mov  [rax], bl
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(10)
  push 10
  ; -- Operator { op: Slash, size: None }
  mov  rdx, 0
  pop  rcx
  pop  rax
  div  rcx
  push rax
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Jump { dest_id: 1 }
  jmp fn_u64_dot_to__str_jmp_dest_1
  ; -- JumpDest { id: 2 }
fn_u64_dot_to__str_jmp_dest_2:
  ; -- Call("drop<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_u64_ ; -- drop<u64>
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushU64(19)
  push 19
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Minus, size: None }
  pop  rbx
  pop  rax
  sub  rax, rbx
  push rax
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushU64(1)
  push 1
  ; -- Operator { op: Plus, size: None }
  pop  rbx
  pop  rax
  add  rax, rbx
  push rax
  ; -- Call("ptr+<char>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_ptr_plus__char_ ; -- ptr+<char>
  ; -- EndBlock { bytes_to_free: 8 }
  add qword [frame_end_ptr], 8
  ; -- Jump { dest_id: 5 }
  jmp fn_u64_dot_to__str_jmp_dest_5
  ; -- JumpDest { id: 5 }
fn_u64_dot_to__str_jmp_dest_5:
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<Str>
fn_write_Str_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 2 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("sys_write")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_sys__write ; -- sys_write
  ; -- Call("drop<bool>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_drop_bool_ ; -- drop<bool>
  ; -- EndBlock { bytes_to_free: 24 }
  add qword [frame_end_ptr], 24
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<String>
fn_write_String_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 3 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_as__str ; -- String.as_str
  ; -- PushFromFrame { offset_from_end: 3, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 24
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("String.delete")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_String_dot_delete ; -- String.delete
  ; -- EndBlock { bytes_to_free: 32 }
  add qword [frame_end_ptr], 32
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<bool>
fn_write_bool_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- StartBlock
  ; -- JumpFalse { dest_id: 0 }
  pop  rax
  test rax, rax
  jz fn_write_bool__jmp_dest_0
  ; -- StartBlock
  ; -- PushU64(4)
  push 4
  ; -- PushGlobal { id: "str_82" }
  push str_82
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_write_bool__jmp_dest_1
  ; -- JumpDest { id: 0 }
fn_write_bool__jmp_dest_0:
  ; -- StartBlock
  ; -- PushU64(5)
  push 5
  ; -- PushGlobal { id: "str_83" }
  push str_83
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- Jump { dest_id: 1 }
  jmp fn_write_bool__jmp_dest_1
  ; -- JumpDest { id: 1 }
fn_write_bool__jmp_dest_1:
  ; -- EndBlock { bytes_to_free: 0 }
  add qword [frame_end_ptr], 0
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<char>
fn_write_char_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushPtrToFrame { offset_from_end: 0 }
  mov rax, [frame_end_ptr]
  add rax, 0
  push rax
  ; -- Call("char.as_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_char_dot_as__str ; -- char.as_str
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<u64>
fn_write_u64_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 48 }
  sub qword [frame_end_ptr], 48
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- InitLocalVarArr { offset_to_var: 0, offset_to_data: 16, data_size: 32, data_width: 1 }
  mov rax, [frame_start_ptr]
  sub rax, 16
  mov rbx, [frame_start_ptr]
  sub rbx, 56
  mov [rax], rbx
  sub rax, 8
  mov rbx, 32
  mov [rax], rbx
  ; -- FramePtrToFrameReserve { offset: 0, size: 2, width: 8 }
  mov  rax, [frame_start_ptr]
  sub  rax, 24
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Operator { op: Read, size: Some((2, 8)) }
  pop  rax
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  add  rax, 8
  mov  rbx, 0
  mov  rbx, [rax]
  push rbx
  ; -- Call("u64.to_str")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_u64_dot_to__str ; -- u64.to_str
  ; -- PushFromFrame { offset_from_end: 2, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 16
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<Str>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_Str_ ; -- write<Str>
  ; -- EndBlock { bytes_to_free: 72 }
  add qword [frame_end_ptr], 72
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
; fn write<u8>
fn_write_u8_:
  pop rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- FrameReserve { bytes: 0 }
  sub qword [frame_end_ptr], 0
  ; -- StartBlock
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushToFrame { quad_words: 1 }
  pop  rax
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  ; -- PushFromFrame { offset_from_end: 0, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 0
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- PushFromFrame { offset_from_end: 1, bytes: 1 }
  mov rax, [frame_end_ptr]
  add rax, 8
  mov rbx, [rax]
  push rbx
  add rax, 8
  ; -- Call("write<u64>")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_write_u64_ ; -- write<u64>
  ; -- EndBlock { bytes_to_free: 16 }
  add qword [frame_end_ptr], 16
  ; -- Return
  mov  rax, [frame_start_ptr]
  push qword [rax-8]
  mov  [frame_end_ptr], rax
  add  qword [frame_end_ptr], 8
  mov  rax, [rax]
  mov  qword [frame_start_ptr], rax
  ret
global _start
_start: 
  mov  qword [frame_start_ptr], frame_stack_end
  mov  qword [frame_end_ptr], frame_stack_end
  ; -- Call("main")
  mov rax, [frame_start_ptr]
  sub  qword [frame_end_ptr], 8
  mov  rbx, [frame_end_ptr]
  mov  [rbx], rax
  mov  rax, [frame_end_ptr]
  mov  qword [frame_start_ptr], rax
  call fn_main ; -- main
exit:
  mov  rax, 60
  mov  rdi, 0
  syscall

segment .data
  str_5: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_18: db 0x48, 0x65, 0x61, 0x70, 0x3a, 
  str_56: db 0x61, 0x6f, 0x63, 0x32, 0x30, 0x32, 0x32, 0x2f, 0x64, 0x61, 0x79, 0x32, 0x2f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e, 0x74, 0x78, 0x74, 
  str_51: db 0x45, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x20, 0x61, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x3a, 0x20, 
  str_75: db 0xa, 
  str_69: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_2: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_21: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_43: db 0x74, 0x72, 0x75, 0x65, 
  str_52: db 0x61, 0x6f, 0x63, 0x32, 0x30, 0x32, 0x32, 0x2f, 0x64, 0x61, 0x79, 0x32, 0x2f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e, 0x74, 0x78, 0x74, 
  str_4: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_70: db 0xa, 
  str_82: db 0x74, 0x72, 0x75, 0x65, 
  str_9: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x53, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_10: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x53, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_50: db 0x61, 0x6f, 0x63, 0x32, 0x30, 0x32, 0x32, 0x2f, 0x64, 0x61, 0x79, 0x32, 0x2f, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x2e, 0x74, 0x78, 0x74, 
  str_38: db 0x29, 
  chunks_p: dq 100000, data_0
  str_7: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x53, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_59: db 0x60, 0x20, 0x69, 0x73, 0x6e, 0x27, 0x74, 0x20, 0x70, 0x61, 0x67, 0x65, 0x2d, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x61, 0x6c, 0x69, 0x67, 0x6e, 0x65, 0x64, 
  str_73: db 0xa, 
  str_57: db 0x50, 0x61, 0x72, 0x74, 0x20, 0x32, 0x20, 0x61, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x3a, 0x20, 
  str_22: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_37: db 0x29, 0x20, 0x69, 0x73, 0x20, 0x67, 0x72, 0x65, 0x61, 0x74, 0x65, 0x72, 0x20, 0x74, 0x68, 0x61, 0x6e, 0x20, 0x73, 0x74, 0x61, 0x72, 0x74, 0x28, 
  str_65: db 0x52, 0x6f, 0x63, 0x6b, 
  str_31: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x69, 0x6e, 0x74, 0x6f, 0x20, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x2e, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 
  str_20: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_27: db 0x42, 0x61, 0x64, 0x20, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x3a, 0x20, 0x60, 
  str_72: db 0xa, 
  str_79: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_8: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x53, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_17: db 0x53, 0x79, 0x73, 0x63, 0x61, 0x6c, 0x6c, 0x20, 0x60, 0x66, 0x73, 0x74, 0x61, 0x74, 0x60, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 
  str_23: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_34: db 0x43, 0x68, 0x61, 0x72, 0x20, 0x60, 
  str_35: db 0x60, 0x20, 0x69, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x6e, 0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 
  str_41: db 0x45, 0x6e, 0x64, 0x3a, 0x20, 0x20, 0x20, 
  str_62: db 0x20, 0x20, 0x4e, 0x6f, 0x74, 0x65, 0x3a, 0x20, 0x4d, 0x61, 0x78, 0x65, 0x64, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x6e, 0x20, 0x68, 0x65, 0x61, 0x70, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 
  str_49: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_48: db 0x74, 0x72, 0x75, 0x65, 
  str_1: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_42: db 0x41, 0x73, 0x73, 0x65, 0x72, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 
  str_76: db 0x74, 0x72, 0x75, 0x65, 
  str_77: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_60: db 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x6d, 0x6d, 0x61, 0x70, 0x20, 0x63, 0x61, 0x6c, 0x6c, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x2e, 0x2e, 0x2e, 
  str_54: db 0x61, 0x6f, 0x63, 0x32, 0x30, 0x32, 0x32, 0x2f, 0x64, 0x61, 0x79, 0x32, 0x2f, 0x65, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x2e, 0x74, 0x78, 0x74, 
  str_33: db 0x60, 
  str_36: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x74, 0x61, 0x6b, 0x65, 0x20, 0x73, 0x75, 0x62, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x20, 0x77, 0x68, 0x65, 0x72, 0x65, 0x20, 0x65, 0x6e, 0x64, 0x20, 0x28, 
  str_24: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_55: db 0x45, 0x78, 0x61, 0x6d, 0x70, 0x6c, 0x65, 0x20, 0x61, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x3a, 0x20, 
  str_63: db 0x59, 0x6f, 0x75, 0x3a, 0x20, 
  str_80: db 0x4d, 0x75, 0x73, 0x74, 0x20, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x20, 0x61, 0x74, 0x20, 0x6c, 0x65, 0x61, 0x73, 0x74, 0x20, 0x32, 0x30, 0x20, 0x63, 0x68, 0x61, 0x72, 0x73, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x75, 0x36, 0x34, 
  str_53: db 0x50, 0x61, 0x72, 0x74, 0x20, 0x31, 0x20, 0x61, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x3a, 0x20, 
  str_13: db 0x20, 0x7c, 0x20, 
  str_11: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x53, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_74: db 0xa, 
  str_78: db 0x74, 0x72, 0x75, 0x65, 
  str_83: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_26: db 0x55, 0x6e, 0x72, 0x65, 0x61, 0x63, 0x68, 0x61, 0x62, 0x6c, 0x65, 
  str_16: db 0x5d, 0x20, 
  str_6: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x20, 0x52, 0x65, 0x66, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_19: db 0x20, 0x20, 0x2a, 0x20, 
  str_12: db 0x5b, 
  str_28: db 0x60, 
  str_30: db 0x60, 
  str_39: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x74, 0x61, 0x6b, 0x65, 0x20, 0x73, 0x75, 0x62, 0x73, 0x6c, 0x69, 0x63, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x56, 0x65, 0x63, 0x20, 0x77, 0x68, 0x65, 0x72, 0x65, 0x20, 0x73, 0x74, 0x61, 0x72, 0x74, 0x20, 0x3c, 0x20, 0x65, 0x6e, 0x64, 
  str_46: db 0x74, 0x72, 0x75, 0x65, 
  str_47: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_61: db 0x47, 0x6c, 0x6f, 0x62, 0x61, 0x6c, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x6f, 0x72, 0x20, 0x72, 0x61, 0x6e, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x72, 0x6f, 0x6f, 0x6d, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x6e, 0x65, 0x77, 0x20, 0x63, 0x68, 0x75, 0x6e, 0x6b, 0x73, 
  str_44: db 0x66, 0x61, 0x6c, 0x73, 0x65, 
  str_64: db 0x20, 0x4d, 0x65, 0x3a, 0x20, 
  str_71: db 0xa, 
  str_81: db 0x30, 
  str_66: db 0x50, 0x61, 0x70, 0x65, 0x72, 
  str_68: db 0x74, 0x72, 0x75, 0x65, 
  str_29: db 0x42, 0x61, 0x64, 0x20, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x3a, 0x20, 0x60, 
  str_15: db 0x20, 0x7c, 0x20, 
  str_45: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x70, 0x61, 0x72, 0x73, 0x65, 0x20, 0x75, 0x38, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x6e, 0x6f, 0x6e, 0x2d, 0x6e, 0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 0x20, 0x63, 0x68, 0x61, 0x72, 0x3a, 0x20, 
  str_3: db 0x43, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x47, 0x65, 0x74, 0x3a, 0x20, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 
  str_40: db 0x53, 0x74, 0x61, 0x72, 0x74, 0x3a, 0x20, 
  str_58: db 0x53, 0x69, 0x7a, 0x65, 0x20, 0x60, 
  str_25: db 0x55, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x64, 0x20, 0x61, 0x20, 0x4e, 0x6f, 0x6e, 0x65, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 
  str_67: db 0x53, 0x63, 0x69, 0x73, 0x73, 0x6f, 0x72, 0x73, 
  str_14: db 0x20, 
  str_32: db 0x45, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x61, 0x20, 0x66, 0x75, 0x6c, 0x6c, 0x79, 0x20, 0x6e, 0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 0x20, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x2e, 0x20, 0x46, 0x6f, 0x75, 0x6e, 0x64, 0x3a, 0x20, 0x60, 
segment .bss
  frame_start_ptr: resq 1
  frame_end_ptr: resq 1
  frame_stack: resq 1048576
  frame_stack_end:
  data_0: resq 200000
  n_chunks_p: resq 1
