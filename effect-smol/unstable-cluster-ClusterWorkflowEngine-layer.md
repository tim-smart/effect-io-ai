Package: `effect`<br />
Module: `ClusterWorkflowEngine`<br />

## ClusterWorkflowEngine.layer

Layer that provides `WorkflowEngine.WorkflowEngine` using the cluster workflow
engine implementation.

**Details**

It requires cluster sharding and message storage, and also registers the
durable clock entity used for workflow wakeups.

**Signature**

```ts
declare const layer: Layer.Layer<WorkflowEngine.WorkflowEngine, never, Sharding.Sharding | MessageStorage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterWorkflowEngine.ts#L774)

Since v4.0.0