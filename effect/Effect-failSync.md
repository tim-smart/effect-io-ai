# failSync

Creates an `Effect` that fails with the specified error, evaluated lazily.

To import and use `failSync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Effect<never, E>
```
