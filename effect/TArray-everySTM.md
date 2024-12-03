# everySTM

Atomically evaluate the conjunction of a transactional predicate across the
members of the array.

To import and use `everySTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.everySTM
```

**Signature**

```ts
export declare const everySTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<boolean, E, R>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<boolean, E, R>
}
```
