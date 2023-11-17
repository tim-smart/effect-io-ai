# count

Count the values in the array matching a predicate.

To import and use `count` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.count
```

**Signature**

```ts
export declare const count: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<never, never, number>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<never, never, number>
}
```
