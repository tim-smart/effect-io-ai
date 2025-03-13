Package: `effect`<br />
Module: `Scope`<br />

## Scope.fork

Forks a new child scope with the specified execution strategy. The child scope
will automatically be closed when this scope is closed.

**Signature**

```ts
declare const fork: (self: Scope, strategy: ExecutionStrategy.ExecutionStrategy) => Effect.Effect<CloseableScope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L173)

Since v2.0.0