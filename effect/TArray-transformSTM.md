# transformSTM

Atomically updates all elements using a transactional effect.

To import and use `transformSTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.transformSTM
```

**Signature**

```ts
export declare const transformSTM: {
  <A, R, E>(f: (value: A) => STM.STM<R, E, A>): (self: TArray<A>) => STM.STM<R, E, void>
  <A, R, E>(self: TArray<A>, f: (value: A) => STM.STM<R, E, A>): STM.STM<R, E, void>
}
```
