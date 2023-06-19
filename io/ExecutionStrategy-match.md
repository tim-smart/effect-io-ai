# match

Folds over the specified `ExecutionStrategy` using the provided case
functions.

Part of the `ExecutionStrategy` module, imported from `@effect/io/ExecutionStrategy`.

**Signature**

```ts
export declare const match: {
  <A>(onSequential: LazyArg<A>, onParallel: LazyArg<A>, onParallelN: (n: number) => A): (self: ExecutionStrategy) => A
  <A>(self: ExecutionStrategy, onSequential: LazyArg<A>, onParallel: LazyArg<A>, onParallelN: (n: number) => A): A
}
```
