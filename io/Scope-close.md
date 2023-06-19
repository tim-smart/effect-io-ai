# close

Closes a scope with the specified exit value, running all finalizers that
have been added to the scope.

Part of the `Scope` module, imported from `@effect/io/Scope`.

**Signature**

```ts
export declare const close: (
  self: CloseableScope,
  exit: Exit.Exit<unknown, unknown>
) => Effect.Effect<never, never, void>
```
