" Author:  Eric Van Dewoestine
" Version: $Revision$
"
" Description: {{{
"
" License:
"
" Copyright (c) 2005 - 2006
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"      http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.
"
" }}}

source $VIMRUNTIME/syntax/htmldjango.vim

if !exists('g:HtmlDjangoUserTags')
  let g:HtmlDjangoUserTags = []
endif

if !exists('g:HtmlDjangoUserFilters')
  let g:HtmlDjangoUserFilters = []
endif

syn region djangoComment start="{#" end="#}"
if len(g:HtmlDjangoUserTags)
  exec 'syn keyword djangoStatement ' . join(g:HtmlDjangoUserTags)
endif
if len(g:HtmlDjanogUserBodyElements)
  for element in g:HtmlDjanogUserBodyElements
    exec 'syn keyword djangoStatement ' . join(element)
  endfor
endif
if len(g:HtmlDjangoUserFilters)
  exec 'syn keyword djangoFilter ' . join(g:HtmlDjangoUserFilters)
endif

" vim:ft=vim:fdm=marker
