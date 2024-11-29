# Fail

Represents a document that cannot be rendered. Generally occurs when
flattening a line. The layout algorithms will reject this document and choose
a more suitable rendering.

To import and use `Fail` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.Fail
undefined
