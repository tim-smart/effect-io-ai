## Scope

Represents a scope that manages finalizers and can fork child scopes.

**Signature**

```ts
export interface Scope extends Pipeable {
  readonly [ScopeTypeId]: ScopeTypeId
  /**
   * The execution strategy for running finalizers in this scope.
   */
  readonly strategy: ExecutionStrategy.ExecutionStrategy
  /**
   * Forks a new child scope with the specified execution strategy. The child scope
   * will automatically be closed when this scope is closed.
   *
   * @internal
   */
  fork(strategy: ExecutionStrategy.ExecutionStrategy): Effect.Effect<Scope.Closeable>
  /**
   * Adds a finalizer to this scope. The finalizer will be run when the scope is closed.
   *
   * @internal
   */
  addFinalizer(finalizer: Scope.Finalizer): Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L51)

Since v2.0.0