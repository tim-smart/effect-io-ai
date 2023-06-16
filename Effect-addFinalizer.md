# addFinalizer

This function adds a finalizer to the scope of the calling `Effect` value.
The finalizer is guaranteed to be run when the scope is closed, and it may
depend on the `Exit` value that the scope is closed with.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.addFinalizer`.

### Signature

```typescript
export declare const addFinalizer: <R, X>(
  finalizer: (exit: Exit.Exit<unknown, unknown>) => Effect<R, never, X>
) => Effect<Scope.Scope | R, never, void>
```
