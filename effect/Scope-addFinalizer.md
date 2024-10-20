# addFinalizer

Adds a finalizer to this scope. The finalizer is guaranteed to be run when
the scope is closed. Use this when the finalizer does not need to know the
`Exit` value that the scope is closed with.

To import and use `addFinalizer` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.addFinalizer
```

**Signature**

```ts
export declare const addFinalizer: (self: Scope, finalizer: Effect.Effect<unknown>) => Effect.Effect<void>
```
