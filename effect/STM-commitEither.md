# commitEither

Commits this transaction atomically, regardless of whether the transaction
is a success or a failure.

To import and use `commitEither` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.commitEither
```

**Signature**

```ts
export declare const commitEither: <R, E, A>(self: STM<R, E, A>) => Effect.Effect<R, E, A>
```
