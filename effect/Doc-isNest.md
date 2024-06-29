# isNest

Returns `true` if the specified `Doc` is a `Nest`, `false` otherwise.

To import and use `isNest` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isNest
```

**Signature**

```ts
export declare const isNest: <A>(self: Doc<A>) => self is Nest<A>
```
