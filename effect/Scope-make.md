# make

Creates a new closeable scope where finalizers will run according to the
specified `ExecutionStrategy`. If no execution strategy is provided, `sequential`
will be used by default.

To import and use `make` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.make
```

**Signature**

```ts
export declare const make: (executionStrategy?: ExecutionStrategy.ExecutionStrategy) => Effect.Effect<CloseableScope>
```
