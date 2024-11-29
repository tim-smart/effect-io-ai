# isNest

Returns `true` if the specified `Doc` is a `Nest`, `false` otherwise.

To import and use `isNest` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isNest
undefined

**Signature**

```ts
export declare const isNest: <A>(self: Doc<A>) => self is Nest<A>
```
