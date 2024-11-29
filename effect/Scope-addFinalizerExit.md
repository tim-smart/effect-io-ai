# addFinalizerExit

Adds a finalizer to this scope. The finalizer receives the `Exit` value
when the scope is closed, allowing it to perform different actions based
on the exit status.

To import and use `addFinalizerExit` from the "Scope" module:

ts
import \* as Scope from "effect/Scope"
// Can be accessed like this
Scope.addFinalizerExit
undefined

**Signature**

```ts
export declare const addFinalizerExit: (self: Scope, finalizer: Scope.Finalizer) => Effect.Effect<void>
```
