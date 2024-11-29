# isSuccess

Returns whether this transactional effect is a success.

To import and use `isSuccess` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.isSuccess
undefined

**Signature**

```ts
export declare const isSuccess: <A, E, R>(self: STM<A, E, R>) => STM<boolean, never, R>
```
