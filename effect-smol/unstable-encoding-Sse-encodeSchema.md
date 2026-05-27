Package: `effect`<br />
Module: `Sse`<br />

## Sse.encodeSchema

Creates an SSE encoder channel for values accepted by a schema.

**Details**

Values are schema-encoded to the untagged SSE event shape, transformed to
`Event`, and then written as Server-Sent Events text.

**Signature**

```ts
declare const encodeSchema: <S extends Schema.Encoder<{ readonly id?: string | undefined; readonly event: string; readonly data: string; }, unknown>, IE, Done>(schema: S) => Channel.Channel<NonEmptyReadonlyArray<string>, IE | Schema.SchemaError, void, NonEmptyReadonlyArray<S["Type"]>, IE | Retry, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L410)

Since v4.0.0