Package: `effect`<br />
Module: `DurableClock`<br />

## DurableClock.sleep

Sleeps inside a workflow, using an in-memory activity for durations at or
below the threshold and scheduling a durable clock for longer durations.

**Signature**

```ts
declare const sleep: (options: { readonly name: string; readonly duration: Duration.Input; readonly inMemoryThreshold?: Duration.Input | undefined; }) => Effect.Effect<void, never, WorkflowEngine | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableClock.ts#L77)

Since v4.0.0