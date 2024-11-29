# every

Atomically evaluate the conjunction of a predicate across the members of
the array.

To import and use `every` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.every
undefined

**Signature**

```ts
export declare const every: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<boolean>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<boolean>
}
```
