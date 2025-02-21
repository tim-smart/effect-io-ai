# failCauseSync

Creates an `Effect` that fails with the specified `Cause`, evaluated lazily.

To import and use `failCauseSync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Effect<never, E>
```
