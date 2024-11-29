# union

Atomically transforms the set into the union of itself and the provided
set.

To import and use `union` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.union
undefined

**Signature**

```ts
export declare const union: {
  <A>(other: TSet<A>): (self: TSet<A>) => STM.STM<void>
  <A>(self: TSet<A>, other: TSet<A>): STM.STM<void>
}
```
