# findLastSTM

Find the last element in the array matching a transactional predicate.

To import and use `findLastSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findLastSTM
```

**Signature**

```ts
export declare const findLastSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, Option.Option<A>>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, Option.Option<A>>
}
```
