# forEach

Atomically performs transactional effect for each item in array.

To import and use `forEach` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, R, E>(f: (value: A) => STM.STM<R, E, void>): (self: TArray<A>) => STM.STM<R, E, void>
  <A, R, E>(self: TArray<A>, f: (value: A) => STM.STM<R, E, void>): STM.STM<R, E, void>
}
```
