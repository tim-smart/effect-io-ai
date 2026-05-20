Package: `effect`<br />
Module: `Event`<br />

## Event.Any

Type-erased event log event definition.

**Details**

It preserves the runtime tag, primary-key function, payload schema, success
schema, and error schema without retaining the original type parameters.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: TypeId
  readonly tag: string
  readonly primaryKey: (payload: any) => string
  readonly payload: Schema.Top
  readonly payloadMsgPack: Msgpack.schema<Schema.Top>
  readonly success: Schema.Top
  readonly error: Schema.Top
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L102)

Since v4.0.0