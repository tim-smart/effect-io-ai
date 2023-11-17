# make

Creates a Scope where Finalizers will run according to the `ExecutionStrategy`.

If an ExecutionStrategy is not provided `sequential` will be used.

To import and use `make` from the "Scope" module:

```ts
import * as Scope from "effect/Scope"
// Can be accessed like this
Scope.make
```

**Signature**

```ts
export declare const make: (
  executionStrategy?: ExecutionStrategy.ExecutionStrategy
) => Effect.Effect<never, never, CloseableScope>
```
