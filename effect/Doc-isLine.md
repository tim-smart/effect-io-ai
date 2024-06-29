# isLine

Returns `true` if the specified `Doc` is a `Line`, `false` otherwise.

To import and use `isLine` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isLine
```

**Signature**

```ts
export declare const isLine: <A>(self: Doc<A>) => self is Line<A>
```
