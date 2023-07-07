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
  <R, E, A, R2, X>(options: {
    readonly acquire: Effect<R, E, A>
    readonly release: (a: A, exit: Exit.Exit<unknown, unknown>) => Effect<R2, never, X>
    readonly interruptable?: false | undefined
  }): Effect<Scope.Scope | R | R2, E, A>
  <R, E, A, R2, X>(options: {
    readonly acquire: Effect<R, E, A>
    readonly release: (exit: Exit.Exit<unknown, unknown>) => Effect<R2, never, X>
    readonly interruptable: true
  }): Effect<Scope.Scope | R | R2, E, A>
}
```
