@echo off
make
for %%f in (build\HelloWorld_*.exe) do (
    echo === Running %%f ===
    %%f
)
