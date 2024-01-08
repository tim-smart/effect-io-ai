# FlatAlt

Represents a flattened alternative of two documents. The layout algorithms
will choose the first document, but when flattened (via `group`) the second
document will be preferreinternal.

The layout algorithms operate under the assumption that the first alternative
is less wide than the flattened second alternative.

To import and use `FlatAlt` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.FlatAlt
```
