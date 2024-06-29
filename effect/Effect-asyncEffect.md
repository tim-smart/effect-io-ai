# asyncEffect

Converts an asynchronous, callback-style API into an `Effect`, which will
be executed asynchronously.

With this variant, the registration function may return a an `Effect`.

To import and use `asyncEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.asyncEffect
```

**Signature**

```ts
export declare const asyncEffect: <A, E, R, R3, E2, R2>(
  register: (callback: (_: Effect<A, E, R>) => void) => Effect<void | Effect<void, never, R3>, E2, R2>
) => Effect<A, E | E2, R | R3 | R2>
```
