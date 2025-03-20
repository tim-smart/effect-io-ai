Package: `effect`<br />
Module: `Layer`<br />

## Layer.scope

A layer that constructs a scope and closes it when the workflow the layer
is provided to completes execution, whether by success, failure, or
interruption. This can be used to close a scope when providing a layer to a
workflow.

**Signature**

```ts
declare const scope: Layer<Scope.Scope, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L660)

Since v2.0.0