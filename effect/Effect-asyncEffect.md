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
export declare const asyncEffect: <R, E, A, R2, E2, X>(
  register: (callback: (_: Effect<R, E, A>) => void) => Effect<R2, E2, X>
) => Effect<R | R2, E | E2, A>
```
