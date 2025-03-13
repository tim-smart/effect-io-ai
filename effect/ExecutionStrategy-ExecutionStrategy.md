Package: `effect`<br />
Module: `ExecutionStrategy`<br />

## ExecutionStrategy.ExecutionStrategy

Describes a strategy for evaluating multiple effects, potentially in
parallel.

There are 3 possible execution strategies: `Sequential`, `Parallel`,
`ParallelN`.

**Signature**

```ts
type ExecutionStrategy = Sequential | Parallel | ParallelN
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ExecutionStrategy.ts#L17)

Since v2.0.0