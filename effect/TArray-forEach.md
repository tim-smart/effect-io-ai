# forEach

Atomically performs transactional effect for each item in array.

To import and use `forEach` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.forEach
undefined

**Signature**

```ts
export declare const forEach: {
  <A, R, E>(f: (value: A) => STM.STM<void, E, R>): (self: TArray<A>) => STM.STM<void, E, R>
  <A, R, E>(self: TArray<A>, f: (value: A) => STM.STM<void, E, R>): STM.STM<void, E, R>
}
```
