Package: `effect`<br />
Module: `DurableQueue`<br />

## DurableQueue.DurableQueue

Durable workflow queue definition containing a payload schema, idempotency
key, and deferred used to await worker results.

**Signature**

```ts
export interface DurableQueue<
  Payload extends Schema.Top,
  Success extends Schema.Top = Schema.Void,
  Error extends Schema.Top = Schema.Never
> {
  readonly [TypeId]: TypeId
  readonly name: string
  readonly payloadSchema: Payload
  readonly idempotencyKey: (payload: Payload["Type"]) => string
  readonly deferred: DurableDeferred.DurableDeferred<Success, Error>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableQueue.ts#L46)

Since v4.0.0