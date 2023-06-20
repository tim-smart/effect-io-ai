# acquireRelease

This function constructs a scoped resource from an `acquire` and `release`
`Effect` value.

If the `acquire` `Effect` value successfully completes execution, then the
`release` `Effect` value will be added to the finalizers associated with the
scope of this `Effect` value, and it is guaranteed to be run when the scope
is closed.

The `acquire` and `release` `Effect` values will be run uninterruptibly.
Additionally, the `release` `Effect` value may depend on the `Exit` value
specified when the scope is closed.

To import and use `acquireRelease` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.acquireRelease
```

**Signature**

```ts
export declare const acquireRelease: {
  <A, R2, X>(release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<R2, never, X>): <R, E>(
    acquire: Effect<R, E, A>
  ) => Effect<Scope.Scope | R2 | R, E, A>
  <R, E, A, R2, X>(
    acquire: Effect<R, E, A>,
    release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<R2, never, X>
  ): Effect<Scope.Scope | R | R2, E, A>
}
```
