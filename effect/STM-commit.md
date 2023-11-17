# commit

Commits this transaction atomically.

To import and use `commit` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.commit
```

**Signature**

```ts
export declare const commit: <R, E, A>(self: STM<R, E, A>) => Effect.Effect<R, E, A>
```
