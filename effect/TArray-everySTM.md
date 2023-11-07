# everySTM

Atomically evaluate the conjunction of a transactional predicate across the
members of the array.

To import and use `everySTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.everySTM
```

**Signature**

```ts
export declare const everySTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, boolean>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, boolean>
}
```
