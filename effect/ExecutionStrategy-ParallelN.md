Package: `effect`<br />
Module: `ExecutionStrategy`<br />

## ExecutionStrategy.ParallelN

Execute effects in parallel, up to the specified number of concurrent fibers.

**Signature**

```ts
export interface ParallelN {
  readonly _tag: "ParallelN"
  readonly parallelism: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ExecutionStrategy.ts#L45)

Since v2.0.0