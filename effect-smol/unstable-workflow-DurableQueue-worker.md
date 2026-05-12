Package: `effect`<br />
Module: `DurableQueue`<br />

## DurableQueue.worker

Create a layer that runs workers for the durable queue.

**Signature**

```ts
declare const worker: <Payload extends Schema.Top, Success extends Schema.Top, Error extends Schema.Top, R>(self: DurableQueue<Payload, Success, Error>, f: (payload: Payload["Type"]) => Effect.Effect<Success["Type"], Error["Type"], R>, options?: { readonly concurrency?: number | undefined; } | undefined) => Layer.Layer<never, never, WorkflowEngine | PersistedQueue.PersistedQueueFactory | R | Payload["EncodingServices"] | Payload["DecodingServices"] | Success["EncodingServices"] | Error["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableQueue.ts#L322)

Since v4.0.0