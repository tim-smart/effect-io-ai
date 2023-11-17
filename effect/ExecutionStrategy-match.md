# match

Folds over the specified `ExecutionStrategy` using the provided case
functions.

To import and use `match` from the "ExecutionStrategy" module:

```ts
import * as ExecutionStrategy from "effect/ExecutionStrategy"
// Can be accessed like this
ExecutionStrategy.match
```

**Signature**

```ts
export declare const match: {
  <A>(onSequential: LazyArg<A>, onParallel: LazyArg<A>, onParallelN: (n: number) => A): (self: ExecutionStrategy) => A
  <A>(self: ExecutionStrategy, onSequential: LazyArg<A>, onParallel: LazyArg<A>, onParallelN: (n: number) => A): A
}
```
