# onExit

Ensures that a cleanup functions runs, whether this effect succeeds, fails,
or is interrupted.

To import and use `onExit` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.onExit
```

**Signature**

```ts
export declare const onExit: {
  <E, A, R2, X>(cleanup: (exit: Exit.Exit<E, A>) => Effect<R2, never, X>): <R>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E, A>
  <R, E, A, R2, X>(self: Effect<R, E, A>, cleanup: (exit: Exit.Exit<E, A>) => Effect<R2, never, X>): Effect<
    R | R2,
    E,
    A
  >
}
```
