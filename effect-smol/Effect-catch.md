Package: `effect`<br />
Module: `Effect`<br />

## Effect.catch

Handles all errors in an effect by providing a fallback effect.

**Details**

The `catchAll` function catches any errors that may occur during the
execution of an effect and allows you to handle them by specifying a fallback
effect. This ensures that the program continues without failing by recovering
from errors using the provided fallback logic.

**Note**: `catchAll` only handles recoverable errors. It will not recover
from unrecoverable defects.

**See**

- `catchCause` for a version that can recover from both recoverable and unrecoverable errors.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.catchAll`

**Signature**

```ts
declare const catch: { <E, A2, E2, R2>(f: (e: E) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<A2, E2, R2>): Effect<A2 | A, E2, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2703)

Since v4.0.0