Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.layerMemory

A in-memory implementation of the WorkflowEngine. This is useful for testing
and local development, but is not suitable for production use as it does not
provide durability guarantees.

**Signature**

```ts
declare const layerMemory: Layer.Layer<WorkflowEngine, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowEngine.ts#L516)

Since v4.0.0