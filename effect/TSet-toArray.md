# toArray

Collects all elements into a `Array`.

To import and use `toArray` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.toArray
undefined

**Signature**

```ts
export declare const toArray: <A>(self: TSet<A>) => STM.STM<Array<A>>
```
