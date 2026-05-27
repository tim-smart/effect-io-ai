Package: `effect`<br />
Module: `Sse`<br />

## Sse.decodeSchema

Creates an SSE decoder channel that decodes each parsed event with a schema.

**Details**

The schema receives the untagged event shape containing `id`, `event`, and
string `data`.

**Signature**

```ts
declare const decodeSchema: <Type extends { readonly id?: string | undefined; readonly event: string; readonly data: string; }, DecodingServices, IE, Done>(schema: Schema.Decoder<Type, DecodingServices>) => Channel.Channel<NonEmptyReadonlyArray<Type>, IE | Retry | Schema.SchemaError, Done, NonEmptyReadonlyArray<string>, IE, Done, DecodingServices>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L118)

Since v4.0.0