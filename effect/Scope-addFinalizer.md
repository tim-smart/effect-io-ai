# addFinalizer

Adds a finalizer to this scope. The finalizer is guaranteed to be run when
the scope is closed.

To import and use `addFinalizer` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.addFinalizer
```

**Signature**

```ts
export declare const addFinalizer: (
  self: Scope,
  finalizer: Effect.Effect<never, never, unknown>
) => Effect.Effect<never, never, void>
```
