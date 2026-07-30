Package: `effect`<br />
Module: `ExecutionStrategy`<br />

## ExecutionStrategy.match

Folds over the specified `ExecutionStrategy` using the provided case
functions.

**Signature**

```ts
declare const match: { <A>(options: { readonly onSequential: LazyArg<A>; readonly onParallel: LazyArg<A>; readonly onParallelN: (n: number) => A; }): (self: ExecutionStrategy) => A; <A>(self: ExecutionStrategy, options: { readonly onSequential: LazyArg<A>; readonly onParallel: LazyArg<A>; readonly onParallelN: (n: number) => A; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ExecutionStrategy.ts#L108)

Since v2.0.0