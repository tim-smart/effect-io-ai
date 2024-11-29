# commit

Commits this transaction atomically.

To import and use `commit` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.commit
undefined

**Signature**

```ts
export declare const commit: <A, E, R>(self: STM<A, E, R>) => Effect.Effect<A, E, R>
```
