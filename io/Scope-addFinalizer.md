# addFinalizer

Adds a finalizer to this scope. The finalizer is guaranteed to be run when
the scope is closed.

Part of the `Scope` module, imported from `@effect/io/Scope`.

**Signature**

```ts
export declare const addFinalizer: (
  self: Scope,
  finalizer: Effect.Effect<never, never, unknown>
) => Effect.Effect<never, never, void>
```
