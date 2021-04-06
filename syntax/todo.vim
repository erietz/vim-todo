syn match comment "^#.*$"
syn region comment start=/'''\w*/ end=/.*'''/
syn region comment start=/"""\w*/ end=/.*"""/

syn region list_item matchgroup=todo_bullet start="^\s*[-*]\s"  end=/^\s*[-*+]\s/me=s-1 contains=not_done
syn match not_done /.*/ contained

syn region list_item matchgroup=done_bullet start="^\s*[+]\s" matchgroup=done end=/^\s*[-*+]\s/me=s-1 contains=done
syn match done /.*/ contained

hi def link todo_bullet Operator
hi def link not_done Statement
hi def link done_bullet Identifier
hi def link done Function
