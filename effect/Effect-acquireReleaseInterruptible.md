# acquireReleaseInterruptible

Creates a scoped resource with an interruptible acquire action.

**Details**

This function is similar to {@link acquireRelease}, but it allows the
acquisition of the resource to be interrupted. The `acquire` effect, which
represents the process of obtaining the resource, can be interrupted if
necessary.

To import and use `acquireReleaseInterruptible` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.acquireReleaseInterruptible
```

**Signature**

```ts
export declare const acquireReleaseInterruptible: {
  <X, R2>(
    release: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>
  ): <A, E, R>(acquire: Effect<A, E, R>) => Effect<A, E, Scope.Scope | R2 | R>
  <A, E, R, X, R2>(
    acquire: Effect<A, E, R>,
    release: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R2>
  ): Effect<A, E, Scope.Scope | R | R2>
}
```
