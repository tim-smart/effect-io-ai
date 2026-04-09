Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ContentFromString

Schema for decoding message content (i.e. an array containing a single
`TextPart`) from a string.

**Signature**

```ts
declare const ContentFromString: Schema.decodeTo<Schema.NonEmptyArray<Schema.toType<Schema.Struct<{ readonly type: Schema.Literal<"text">; readonly text: Schema.String; readonly "~effect/ai/Prompt/Part": Schema.withDecodingDefaultKey<Schema.Literal<"~effect/ai/Prompt/Part">>; readonly options: Schema.withDecodingDefault<Schema.$Record<Schema.String, Schema.NullOr<Schema.Codec<Schema.Json>>>>; }>>>, Schema.String, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1076)

Since v4.0.0