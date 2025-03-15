Package: `effect`<br />
Module: `Scope`<br />

## Scope.make

Creates a new closeable scope where finalizers will run according to the
specified `ExecutionStrategy`. If no execution strategy is provided, `sequential`
will be used by default.

**Signature**

```ts
declare const make: (executionStrategy?: ExecutionStrategy.ExecutionStrategy) => Effect.Effect<CloseableScope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L202)

Since v2.0.0