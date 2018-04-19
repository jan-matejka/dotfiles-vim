let g:python_recommended_style = 0
" do not let the system python ftplugin, which is loaded after this file,
" mess with my default indenting config

setlocal foldmethod=indent
" fold by indents, fairly obvious for python

" other optons of interest here would be
" keywordprg=pydoc
" expandtab

" indenting
" =========
"
" Considerations:
" 1. Automatically increase indent after if ...:<CR>, while...:<CR>:, etc
" 2. Automatically increase indent after def ...:<CR>, class ...:<CR>, etc
" 3. Comments
" 3.1. are indented same way as code
" 3.2. Multiline comments stay indendented as previous line
" 3.3. Multiline comments autoinsert '#' on new lines
"      Note: not quite sure about this one, it might be annoying at the
"      comment end. Need empirical data.
" 3.4. Does the right thing on "gq" on visual selected block
"      TBD: somewhere it happens that the indents are done correctly
"      during writing but on gq it indents everything but first line too
"      little.  Might be in rst files.
" 4. Docstrings are indented same as code
"
" Default setting (with the system python ftplugin):
" --------------------------------------------------
" noautoindent
" nosmartindent
" nocindent
"
" somehow sets cinkeys and indentkeys (even though identexpr is empty,
" wtf)
"
" Results: Fails all the considerations.
"
" smartindent
" -----------
" behaves the same way in combination with both autoindent and
" noautoindent
"
" Results:
"   Fails 2, 3.1, 3.2 and 3.3
"   Satisfies 1
"   N/A: 3.4, 4
"
" autoindent + nosmartindent
" --------------------------
" Results:
"   Fails 1 and 2 and 3.3
"   Satisfies rest of the 3 and 4.
"
" In my experience failing 1 and 2 is of little inconvenience as opposed
" to 3 and 4 which I've been writing and re-writing a lot lately. That's a
" real pita when it breaks with every change.

setlocal autoindent

" cindent
" -------
" with the system python ftplugin is completely weird.
" Satisfies 1 and 3.1 but messes up other things::
"
"    def foo():
"      """
"        oifheoihfe
"        """
"      # fiiehfieh
"        dihdfh
"
"  # oifheoihfe ifhei ofehof eofh eofheoi foweh foew of ewof ehowi foweihf
"    # oiewhfoiewhfihe oehwfoiefoih he foeh ofehofe hoifheof heofheof
"    # heofhefo efhoe hfeohfeofiheo fehfoehfoehfoehfoehf oe foe fo eohfeo
"
" Might merit further investigation though (I'm not familiar with the
" cinkeys, etc settings).

setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
