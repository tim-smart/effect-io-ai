# findFirstSTM

Find the first element in the array matching a transactional predicate.

To import and use `findFirstSTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.findFirstSTM
```

**Signature**

```ts
export declare const findFirstSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, Option.Option<A>>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, Option.Option<A>>
}
```
