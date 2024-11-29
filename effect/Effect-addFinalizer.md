# addFinalizer

This function adds a finalizer to the scope of the calling `Effect` value.
The finalizer is guaranteed to be run when the scope is closed, and it may
depend on the `Exit` value that the scope is closed with.

To import and use `addFinalizer` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.addFinalizer
undefined

**Signature**

```ts
export declare const addFinalizer: <X, R>(
  finalizer: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R>
) => Effect<void, never, Scope.Scope | R>
```
