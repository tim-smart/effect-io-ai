# addFinalizerExit

A simplified version of `addFinalizerWith` when the `finalizer` does not
depend on the `Exit` value that the scope is closed with.

To import and use `addFinalizerExit` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.addFinalizerExit
```

**Signature**

```ts
export declare const addFinalizerExit: (self: Scope, finalizer: Scope.Finalizer) => Effect.Effect<void>
```
