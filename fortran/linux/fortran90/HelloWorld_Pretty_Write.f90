program HelloWorld_Pretty
            implicit none
            call helloworld()
end program HelloWorld_Pretty

subroutine helloworld()
            write(6, *) "Hello World!"
end subroutine helloworld
