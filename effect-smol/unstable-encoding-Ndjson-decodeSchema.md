Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.decodeSchema

Creates an NDJSON byte decoder channel for values of a schema.

The channel decodes UTF-8 bytes, parses each NDJSON line, and then decodes
each parsed value with the schema.

**Signature**

```ts
declare const decodeSchema: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>(options?: { readonly ignoreEmptyLines?: boolean | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, Schema.SchemaError | NdjsonError | IE, Done, Arr.NonEmptyReadonlyArray<Uint8Array>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L212)

Since v4.0.0