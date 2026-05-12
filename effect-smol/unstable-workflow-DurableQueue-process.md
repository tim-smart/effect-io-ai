Package: `effect`<br />
Module: `DurableQueue`<br />

## DurableQueue.process

Add an item to the queue and wait for a worker to process it.

**Signature**

```ts
declare const process: <Payload extends Schema.Top, Success extends Schema.Top, Error extends Schema.Top>(self: DurableQueue<Payload, Success, Error>, payload: Payload["~type.make.in"], options?: { readonly retrySchedule?: Schedule.Schedule<any, PersistedQueue.PersistedQueueError> | undefined; }) => Effect.Effect<Success["Type"], Error["Type"], WorkflowEngine | WorkflowInstance | PersistedQueue.PersistedQueueFactory | Payload["EncodingServices"] | Payload["DecodingServices"] | Success["DecodingServices"] | Error["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableQueue.ts#L159)

Since v4.0.0