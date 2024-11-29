# isWithPageWidth

Returns `true` if the specified `Doc` is a `WithPageWidth`, `false` otherwise.

To import and use `isWithPageWidth` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isWithPageWidth
undefined

**Signature**

```ts
export declare const isWithPageWidth: <A>(self: Doc<A>) => self is WithPageWidth<A>
```
