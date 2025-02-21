# failCause

Creates an `Effect` that fails with the specified `Cause`.

To import and use `failCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Effect<never, E>
```
