# onExit

Ensures that a cleanup functions runs, whether this effect succeeds, fails,
or is interrupted.

To import and use `onExit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.onExit
```

**Signature**

```ts
export declare const onExit: {
  <A, E, X, R2>(
    cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>
  ): <R>(self: Effect<A, E, R>) => Effect<A, E, R2 | R>
  <A, E, R, X, R2>(
    self: Effect<A, E, R>,
    cleanup: (exit: Exit.Exit<A, E>) => Effect<X, never, R2>
  ): Effect<A, E, R | R2>
}
```
