# isParallel

Returns `true` if the specified `ExecutionStrategy` is an instance of
`Sequential`, `false` otherwise.

To import and use `isParallel` from the "ExecutionStrategy" module:

```ts
import * as ExecutionStrategy from '@effect/io/ExecutionStrategy'

// Can be accessed like this
ExecutionStrategy.isParallel
```

**Signature**

```ts
export declare const isParallel: (self: ExecutionStrategy) => self is Parallel
```
