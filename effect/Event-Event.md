Package: `@effect/experimental`<br />
Module: `Event`<br />

## Event.Event

Represents an event in an EventLog.

**Signature**

```ts
export interface Event<
  out Tag extends string,
  in out Payload extends Schema.Schema.Any = typeof Schema.Void,
  in out Success extends Schema.Schema.Any = typeof Schema.Void,
  in out Error extends Schema.Schema.All = typeof Schema.Never
> {
  readonly [TypeId]: TypeId
  readonly tag: Tag
  readonly primaryKey: (payload: Schema.Schema.Type<Payload>) => string
  readonly payload: Payload
  readonly payloadMsgPack: MsgPack.schema<Payload>
  readonly success: Success
  readonly error: Error
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/Event.ts#L33)

Since v1.0.0