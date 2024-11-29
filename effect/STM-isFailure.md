# isFailure

Returns whether this transactional effect is a failure.

To import and use `isFailure` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.isFailure
undefined

**Signature**

```ts
export declare const isFailure: <A, E, R>(self: STM<A, E, R>) => STM<boolean, never, R>
```
