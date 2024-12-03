# isFlatAlt

Returns `true` if the specified `Doc` is a `FlatAlt`, `false` otherwise.

To import and use `isFlatAlt` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isFlatAlt
```

**Signature**

```ts
export declare const isFlatAlt: <A>(self: Doc<A>) => self is FlatAlt<A>
```
