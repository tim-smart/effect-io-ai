# fork

Forks a new scope that is a child of this scope. The child scope will
automatically be closed when this scope is closed.

Part of the `Scope` module, imported from `@effect/io/Scope`.

**Signature**

```ts
export declare const fork: (
  self: Scope,
  strategy: ExecutionStrategy.ExecutionStrategy
) => Effect.Effect<never, never, CloseableScope>
```
