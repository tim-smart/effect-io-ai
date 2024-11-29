# isParallelN

Returns `true` if the specified `ExecutionStrategy` is an instance of
`Sequential`, `false` otherwise.

To import and use `isParallelN` from the "ExecutionStrategy" module:

ts
import \* as ExecutionStrategy from "effect/ExecutionStrategy"
// Can be accessed like this
ExecutionStrategy.isParallelN
undefined

**Signature**

```ts
export declare const isParallelN: (self: ExecutionStrategy) => self is ParallelN
```
