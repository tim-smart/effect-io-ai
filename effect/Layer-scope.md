# scope

A layer that constructs a scope and closes it when the workflow the layer
is provided to completes execution, whether by success, failure, or
interruption. This can be used to close a scope when providing a layer to a
workflow.

To import and use `scope` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.scope
undefined

**Signature**

```ts
export declare const scope: Layer<Scope.CloseableScope, never, never>
```
