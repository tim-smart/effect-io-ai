Package: `effect`<br />
Module: `Event`<br />

## Event.Event

Represents an event in an EventLog.

**Signature**

```ts
export interface Event<
  out Tag extends string,
  in out Payload extends Schema.Top = typeof Schema.Void,
  in out Success extends Schema.Top = typeof Schema.Void,
  in out Error extends Schema.Top = typeof Schema.Never
> {
  readonly [TypeId]: TypeId
  readonly tag: Tag
  readonly key: string
  readonly primaryKey: (payload: Schema.Schema.Type<Payload>) => string
  readonly payload: Payload
  readonly payloadMsgPack: Msgpack.schema<Payload>
  readonly success: Success
  readonly error: Error
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L33)

Since v4.0.0