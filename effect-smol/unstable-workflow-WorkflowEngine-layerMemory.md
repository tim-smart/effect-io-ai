Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.layerMemory

Layer that provides an in-memory `WorkflowEngine`.

**When to use**

Use to run tests and local development workflows where durability is not
needed.

**Gotchas**

This layer keeps state only in memory and is not suitable for production
workflows that require durability.

**Signature**

```ts
declare const layerMemory: Layer.Layer<WorkflowEngine, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowEngine.ts#L575)

Since v4.0.0