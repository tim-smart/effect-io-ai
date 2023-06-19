# make

Creates a Scope where Finalizers will run according to the `ExecutionStrategy`.

If an ExecutionStrategy is not provided `sequential` will be used.

Part of the `Scope` module, imported from `@effect/io/Scope`.

**Signature**

```ts
export declare const make: (
  executionStrategy?: ExecutionStrategy.ExecutionStrategy
) => Effect.Effect<never, never, CloseableScope>
```
