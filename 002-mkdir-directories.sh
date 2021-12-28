pwd # present working directorie (where i am now)
ls # list directory contents
cd # change directory
cd - # return to prev dir
cd ~ # return to home
mkdir example-01
mkdir -p example/foo//bar # no error if existing, make parent directories as needed
rm -rf example-01
mv example-01 example-02 # move - mv source to_destination

# brew install tree
tree example-03 # will see tree structure

# rename with mv
mv example-03 new_name
