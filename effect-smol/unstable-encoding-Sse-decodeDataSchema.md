Package: `effect`<br />
Module: `Sse`<br />

## Sse.decodeDataSchema

Creates an SSE decoder channel that JSON-decodes each event `data` field with a schema.

**Details**

The output preserves the SSE `event` name and optional `id` while replacing
`data` with the decoded value.

**Signature**

```ts
declare const decodeDataSchema: <Type, DecodingServices, IE, Done>(schema: Schema.Decoder<Type, DecodingServices>) => Channel.Channel<NonEmptyReadonlyArray<{ readonly event: string; readonly id: string | undefined; readonly data: Type; }>, IE | Retry | Schema.SchemaError, Done, NonEmptyReadonlyArray<string>, IE, Done, DecodingServices>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L135)

Since v4.0.0