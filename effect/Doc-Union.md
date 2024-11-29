# Union

Represents the union of two documents. Used to implement layout alternatives
for `group`.

**Invariants**

- The first lines of the first document should be longer than the first lines
  of the second document so that the layout algorithm can pick the document
  with the best fit.

To import and use `Union` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.Union
undefined
