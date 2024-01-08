# isNesting

Returns `true` if the specified `Doc` is a `Nesting`, `false` otherwise.

To import and use `isNesting` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isNesting
```

**Signature**

```ts
export declare const isNesting: <A>(self: Doc<A>) => self is Nesting<A>
```
