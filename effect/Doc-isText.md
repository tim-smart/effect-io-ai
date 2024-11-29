# isText

Returns `true` if the specified `Doc` is a `Text`, `false` otherwise.

To import and use `isText` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isText
undefined

**Signature**

```ts
export declare const isText: <A>(self: Doc<A>) => self is Text<A>
```
