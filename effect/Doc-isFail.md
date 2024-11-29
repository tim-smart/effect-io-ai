# isFail

Returns `true` if the specified `Doc` is a `Fail`, `false` otherwise.

To import and use `isFail` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.isFail
undefined

**Signature**

```ts
export declare const isFail: <A>(self: Doc<A>) => self is Fail<A>
```
