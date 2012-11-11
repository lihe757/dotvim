This directory places some special configuration and file for certain plugin
---------------------------------------------------------------------------

Powerline
---------

Install patch font on Mac OS:

1. Double click font filie ./Powerline/Inconsolata-dz-Powerline.otf to install.
2. **For gvim users:** Update the GUI font in your ``vimrc`` file::

       set guifont=MyFont\ for\ Powerline
       
    **For terminal users:** Update your terminal configuration to use the 
             patched font.
      patched font.
      
3. Update your ``vimrc`` configuration to use the new symbols::

             let g:Powerline_symbols = 'fancy'
