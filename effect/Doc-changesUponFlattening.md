# changesUponFlattening

Select the first element of each `Union` and discard the first element of
each `FlatAlt` to produce a "flattened" version of the input document.

The result is `Flattened` if the element might change depending on the chosen
layout algorithm (i.e., the resulting document contains sub-documents that
may be rendered differently).

The result is `AlreadyFlat` if the document is static (i.e., the resulting
document contains only a plain `Empty` node).

`NeverFlat` is returned when the document cannot be flattened because it
contains either a hard `Line` or a `Fail`.

To import and use `changesUponFlattening` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.changesUponFlattening
```

**Signature**

```ts
export declare const changesUponFlattening: <A>(self: Doc<A>) => Flatten<Doc<A>>
```
