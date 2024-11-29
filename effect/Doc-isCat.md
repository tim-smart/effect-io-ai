# isCat

Returns `true` if the specified `Doc` is a `Cat`, `false` otherwise.

To import and use `isCat` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isCat
undefined

**Signature**

```ts
export declare const isCat: <A>(self: Doc<A>) => self is Cat<A>
```
