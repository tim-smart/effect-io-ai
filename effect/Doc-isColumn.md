# isColumn

Returns `true` if the specified `Doc` is a `Column`, `false` otherwise.

To import and use `isColumn` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isColumn
```

**Signature**

```ts
export declare const isColumn: <A>(self: Doc<A>) => self is Column<A>
```
