# scope

A layer that constructs a scope and closes it when the workflow the layer
is provided to completes execution, whether by success, failure, or
interruption. This can be used to close a scope when providing a layer to a
workflow.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const scope: (_: void) => Layer<never, never, Scope.CloseableScope>
```
