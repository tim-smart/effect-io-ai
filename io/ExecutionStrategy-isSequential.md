# isSequential

Returns `true` if the specified `ExecutionStrategy` is an instance of
`Sequential`, `false` otherwise.

To import and use `isSequential` from the "ExecutionStrategy" module:

```ts
import * as ExecutionStrategy from '@effect/io/ExecutionStrategy'

// Can be accessed like this
ExecutionStrategy.isSequential
```

**Signature**

```ts
export declare const isSequential: (self: ExecutionStrategy) => self is Sequential
```
