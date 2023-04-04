"Nifty syntax file

if exists("b:current_syntax")
    finish
endif

syn keyword niftyLetVal let val const
syn keyword niftyIf if else elif
syn keyword niftyLoop for while until goto
syn keyword niftyRange in
syn keyword niftyContinue continue break
syn keyword niftyDelay defer defer_err
syn keyword niftyInclude use using package api extern
syn keyword niftyReturn return
syn keyword niftyStructure restrict
syn keyword niftyStorageClass struct behavior enum
syn keyword niftyImpl impl endimpl constimpl does
syn keyword niftySelf Self
syn keyword niftyCasting cast recast auto_cast as type
syn keyword niftyWhen when
syn keyword niftyFnMd fn md
syn keyword niftyTry try
syn keyword niftyNewDelete new delete
syn keyword niftyEmit emit
syn keyword niftyBuiltIn assert assert_db panic

syn keyword niftyDataType int float double bool char string cstring uint u8 u16 u32 u64 u128 s8 s16 s32 s64 s128 f16 f32 f64 f128 b8 b16 b32 b64 typeid void rawptr uintptr
syn keyword niftyOperators size_of type_of type_from typeid_of typeinfo_of name_of align_of
syn keyword niftyBool true false
syn keyword niftyNull null undefined unused

syn match niftyInt "\<[0-9_]\+\>" display
syn match niftyFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syn match niftyDouble "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syn match niftyHex "\<0x[0-9A-fa-f]\+\>" display
syn match niftyOct "\<0q[0-7]\+\>" display

syn keyword niftyTodo TODO FIXME XXX contained
syn match niftyCommentNote "@\<\w\+\>" contained display
syn match niftyLineComment "//.*" contains=niftyTodo,niftyCommentNote
syn region niftyBlockComment start=/\v\/\*|\v\/\-/ end=/\v\*\/|\v\-\// contains=niftyLineComment,niftyBlockComment,niftyCommentNote

syn region niftyString start=/\v"/ skip=/\v\\./ end=/\v"/

syn match niftyMacro "#\<\w\+\>"
syn match niftyLabel "#\<\w\+\>!"
syn match niftyAttribute "#\[\<\w\+\>\]"

syn match niftyparen "(" contains=niftyParen
syn match niftyFunction "\w\+\s*(\@=" contains=niftyParen

hi link niftyLetVal Structure
hi link niftyIf Conditional
hi link niftyLoop Repeat
hi link niftyRange Repeat
hi link niftyContinue Repeat
hi link niftyDelay Operator
hi link niftyInclude Include
hi link niftyReturn Keyword
hi link niftyStructure Structure
hi link niftyStorageClass StorageClass
hi link niftyImpl Statement
hi link niftySelf Type
hi link niftyCasting Keyword
hi link niftyWhen Keyword
hi link niftyFnMd Keyword
hi link niftyTry Exception
hi link niftyNewDelete Operator
hi link niftyEmit Operator
hi link niftyBuiltIn Keyword

hi link niftyDataType Type
hi link niftyOperator Operator
hi link niftyBool Boolean
hi link niftyNull Constant

hi link niftyInt Number
hi link niftyFloat Float
hi link niftyDouble Float
hi link niftyHex Number
hi link niftyOct Number

hi link niftyTodo Todo
hi link niftyLineComment Comment
hi link niftyBlockComment Comment
hi link niftyCommentNote Identifier

hi link niftyString String

hi link niftyMacro Macro
hi link niftyLabel Constant
hi link niftyAttribute Macro

hi link niftyFunction Function

let b:current_syntax = "nifty"

