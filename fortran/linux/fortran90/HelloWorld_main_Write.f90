program HelloWorld
            use, intrinsic :: iso_fortran_env, only: output_unit, error_unit
            implicit none

            character(len=256) :: err_msg
            character(len=*), parameter :: msg = "Hello World!"
            integer :: ios

            write(output_unit, '(A)', iostat=ios, iomsg=err_msg) msg

            if (ios /= 0) then
                        write(error_unit, '(A, I0, A)') "Write error, iostat = ", ios, ", message = ", trim(err_msg)
                        error stop 1
            end if

            stop 0
end program HelloWorld
