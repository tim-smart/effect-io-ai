# updateSTM

Atomically updates element in the array with given transactional effect.

To import and use `updateSTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.updateSTM
```

**Signature**

```ts
export declare const updateSTM: {
  <A, R, E>(index: number, f: (value: A) => STM.STM<R, E, A>): (self: TArray<A>) => STM.STM<R, E, void>
  <A, R, E>(self: TArray<A>, index: number, f: (value: A) => STM.STM<R, E, A>): STM.STM<R, E, void>
}
```
