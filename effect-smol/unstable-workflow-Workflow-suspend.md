Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.suspend

Marks a workflow instance as suspended and interrupts the current fiber to
stop execution until it is resumed.

**Signature**

```ts
declare const suspend: (instance: WorkflowInstance["Service"]) => Effect.Effect<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L871)

Since v4.0.0