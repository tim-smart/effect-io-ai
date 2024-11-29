# isEmpty

Tests if the set is empty or not

To import and use `isEmpty` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.isEmpty
undefined

**Signature**

```ts
export declare const isEmpty: <A>(self: TSet<A>) => STM.STM<boolean>
```
