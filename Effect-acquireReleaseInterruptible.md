# acquireReleaseInterruptible

This function is a variant of `acquireRelease` that allows the `acquire`
`Effect` value to be interruptible.

Since the `acquire` `Effect` value could be interrupted after partially
acquiring resources, the `release` `Effect` value is not allowed to access
the resource produced by `acquire` and must independently determine what
finalization, if any, needs to be performed (e.g. by examining in memory
state).

Additionally, the `release` `Effect` value may depend on the `Exit` value
specified when the scope is closed.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const acquireReleaseInterruptible: <R, E, A, R2, X>(
  acquire: Effect<R, E, A>,
  release: (exit: Exit.Exit<unknown, unknown>) => Effect<R2, never, X>
) => Effect<Scope.Scope | R | R2, E, A>
```
