---------------------------------------------------------------------------------
-- This files is for a creation of new files
---------------------------------------------------------------------------------
local cmd = vim.cmd
---------------------------------------------------------------------------------
-- Shell Script
---------------------------------------------------------------------------------

cmd([[  autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/env bash') ]])

---------------------------------------------------------------------------------
-- Clang
---------------------------------------------------------------------------------

vim.cmd([[
  function AutoClang()
    call append(0, '#include <stdio.h>')
    call append(1, '#include <stdlib.h>')
    call append(2, 'int main(int argc , char *argv[])')
    call append(3, '{')
    call append(4, '  printf("Hello, C!!!");')
    call append(5, '  return 0;')
    call append(6, '}')
  endfunction

  autocmd BufNewFile *.c :call AutoClang
]])

---------------------------------------------------------------------------------
-- C++
---------------------------------------------------------------------------------

cmd([[
  function AutoCpp()
    call append(0, '#include <iostream>')
    call append(2, 'int main(int argc , char *argv[])')
    call append(3, '{')
    call append(4, '  std::cout << \"Hello, C++!!!\"' << '\n');
    call append(5, '  return 0;')
    call append(6, '}')
  endfunction

  autocmd BufNewFile *.cpp :call AutoCpp
  autocmd BufNewFile *.c++ :call AutoCpp
]])

---------------------------------------------------------------------------------
-- Makefile
---------------------------------------------------------------------------------

cmd([[
  function AutoMakeFile()
      call append(0, 'TARGET=hello-world')
      call append(1, 'CC=g++')
      call append(2, 'DEBUG=-g')
      call append(3, 'OPT=-O0')
      call append(4, 'WARN=-Wall')
      call append(5, 'PTHREAD=-pthread')
      call append(6, 'CCFLAGS=$(DEBUG) $(OPT) $(WARN) $(PTHREAD) -pipe')
      call append(7, 'LD=g++')
      call append(8, 'LDFLAGS=$(PTHREAD) -export-dynamic')
      call append(9, 'OBJS= main.o helloworld.o')
      call append(10, 'all: $(OBJS)')
      call append(11, '  $(LD) -o $(TARGET) $(OBJS) $(LDFLAGS)')
      call append(12, '')  
      call append(13, 'main.o: src/main.cpp')
      call append(14, '  $(CC) -c $(CCFLAGS) src/main.cpp -o main.o')
      call append(15, '')  
      call append(16, 'helloworld.o: src/helloworld.cpp')
      call append(17, '  $(CC) -c $(CCFLAGS) src/helloworld.cpp  -o helloworld.o')
      call append(14, '')  
      call append(15, 'clean:')
      call append(16, '  rm -f *.o')
  endfunction

  autocmd BufNewFile Makefile :call AutoMakeFile
  autocmd BufNewFile makefile :call AutoMakeFile
]])


