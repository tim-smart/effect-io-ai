# parallelN

Execute effects in parallel, up to the specified number of concurrent fibers.

To import and use `parallelN` from the "ExecutionStrategy" module:

```ts
import * as ExecutionStrategy from 'effect/ExecutionStrategy'

// Can be accessed like this
ExecutionStrategy.parallelN
```

**Signature**

```ts
export declare const parallelN: (parallelism: number) => ExecutionStrategy
```
