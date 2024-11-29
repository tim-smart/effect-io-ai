# DocTree

Represents a document that has been laid out into a tree-like structure.

A `DocStream` is a linked list of different annotated cons cells (i.e.
`TextStream` and then some further `DocStream`, `LineStream` and then some
further `DocStream`, etc.). The `DocStream` format is quite suitable as a
target for a layout engine, but is not suitable for rendering to a more
structured format, such as HTML, where we do not want to perform a lookahead
until the end of some pre-defined markup. These formats would benefit more
from a tree-like structure that explicitly marks its contents as annotated.
A `DocTree` is therefore much more suitable for this use case.

To import and use `DocTree` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.DocTree
undefined
