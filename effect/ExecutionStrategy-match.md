# match

Folds over the specified `ExecutionStrategy` using the provided case
functions.

To import and use `match` from the "ExecutionStrategy" module:

ts
import \* as ExecutionStrategy from "effect/ExecutionStrategy"
// Can be accessed like this
ExecutionStrategy.match
undefined

**Signature**

```ts
export declare const match: {
  <A>(options: {
    readonly onSequential: LazyArg<A>
    readonly onParallel: LazyArg<A>
    readonly onParallelN: (n: number) => A
  }): (self: ExecutionStrategy) => A
  <A>(
    self: ExecutionStrategy,
    options: {
      readonly onSequential: LazyArg<A>
      readonly onParallel: LazyArg<A>
      readonly onParallelN: (n: number) => A
    }
  ): A
}
```
