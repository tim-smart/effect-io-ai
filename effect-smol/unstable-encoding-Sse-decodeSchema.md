Package: `effect`<br />
Module: `Sse`<br />

## Sse.decodeSchema

Creates an SSE decoder channel that decodes each parsed event with a schema.

**Details**

The schema receives the untagged event shape containing `id`, `event`, and
string `data`.

**Signature**

```ts
declare const decodeSchema: <S extends EventCodec, IE, Done>(schema: S) => Channel.Channel<NonEmptyReadonlyArray<S["Type"]>, IE | Retry | Schema.SchemaError, Done, NonEmptyReadonlyArray<string>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L106)

Since v4.0.0