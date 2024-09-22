1. Modal Editing and Moving Around

### Normal mode

- Always after editing click `escape` key to go back to normal mode.

- Copy a line and paste it 5 times
    - `yy`, copy the line
    - `5p`, paste it 5 times

#### Moving around

- Later on consider disabling the arrow keys and stick to `H, J, K` and `L`
to move around short distances


### Visual Mode

- `v`, enter into visual mode
- `Shift + v`, line visual mode. Select entire lines
- `Ctrl + v`, visual block mode. Select blocks of text
- `o`, when in visual block mode to toggle moving to opposite ends of the selection

- `Ctrl + v` then `Move the cursor vertically over sentences` then `Shift + i` to enter
into insert mode then `type your text which will appear in the places you had selected`
finally press `escape` to effect.

- `Ctrl + v` then `Move the cursor vertically over target lines` then press `$` to go 
to the end of the line followed by `Shift + a` to append. Type some text finally
press `escape` to add that text to the end each of the target lines. 


### Command mode

- `Ctrl + :`, where you can open files, save or quit e.t.c

2. Managing Files with Buffers

- `:e filename.extension` e.g. `:e text.md`, this opens the file in edit mode 
- `Tab Key` to autocomplete the file name 
- `:enew`, open a new unamed buffer.
- `:e non-existing-file`, open a file which doesn't exist but use the given name.

- `:ls`, list all buffers
- `:b buffer_number`, to open the file with that number
- `:b filename` to open that file
- `Ctrl + 6`, to toggle between the last two recent buffers

- `:sp`, split the window horizontally 
- `:q`, close a split. `:q`, if there any open splits, it closes all of them
simultaneously and the final `:q`, quits nvim

- `:vsplt`, vertically split the window
- above opens same buffer in the new split
- `Ctrl + w` then `H, J, K` and `L` to move into the split we want
- `:b buffer_number or buffer_name`, to open that buffer into that split
or `:e existing_file`, open that file into that split

- `:tabnew`, opens a new tab layout i.e. another place to keep typing
each layer/tab has a different number of splits e.t.c

- `:tabp`, switch to previous tab
- above feature isn't used that much instead a plugin is preferred

- to comment multiple lines use `Shift + V` then `gc`
- to comment an entire block of code e.g. a function use `gcap`
