Package: `effect`<br />
Module: `DurableQueue`<br />

## DurableQueue.makeWorker

Create a worker effect that processes items from the durable queue.

**Signature**

```ts
declare const makeWorker: <Payload extends Schema.Top, Success extends Schema.Top, Error extends Schema.Top, R>(self: DurableQueue<Payload, Success, Error>, f: (payload: Payload["Type"]) => Effect.Effect<Success["Type"], Error["Type"], R>, options?: { readonly concurrency?: number | undefined; } | undefined) => Effect.Effect<never, never, WorkflowEngine | PersistedQueue.PersistedQueueFactory | R | Payload["EncodingServices"] | Payload["DecodingServices"] | Success["EncodingServices"] | Error["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableQueue.ts#L235)

Since v4.0.0