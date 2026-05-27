Package: `effect`<br />
Module: `Event`<br />

## Event.make

Creates an event log event definition.

**Details**

If omitted, the payload and success schemas default to `Schema.Void`, the error
schema defaults to `Schema.Never`, and the MessagePack payload schema is derived
from the payload schema.

**Signature**

```ts
declare const make: <Tag extends string, Payload extends Schema.Top = Schema.Void, Success extends Schema.Top = Schema.Void, Error extends Schema.Top = Schema.Never>(options: { readonly tag: Tag; readonly primaryKey: (payload: Schema.Schema.Type<Payload>) => string; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: Error | undefined; }) => Event<Tag, Payload, Success, Error>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L426)

Since v4.0.0