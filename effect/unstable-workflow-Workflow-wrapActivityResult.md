Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.wrapActivityResult

Wraps an activity-like effect so workflow suspension waits for currently
running activities to finish or suspend.

**Signature**

```ts
declare const wrapActivityResult: <A, E, R>(effect: Effect.Effect<A, E, R>, isSuspend: (value: A) => boolean) => Effect.Effect<A, E, R | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Workflow.ts#L722)

Since v4.0.0