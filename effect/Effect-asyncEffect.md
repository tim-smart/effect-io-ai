# asyncEffect

A variant of {@link async} where the registration function may return an `Effect`.

To import and use `asyncEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.asyncEffect
```

**Signature**

```ts
export declare const asyncEffect: <A, E, R, R3, E2, R2>(
  register: (callback: (_: Effect<A, E, R>) => void) => Effect<Effect<void, never, R3> | void, E2, R2>
) => Effect<A, E | E2, R | R2 | R3>
```
