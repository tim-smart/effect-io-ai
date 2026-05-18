Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.encodeSchema

Creates an NDJSON byte encoder channel for values of a schema.

Values are first encoded with the schema and then written as UTF-8
newline-delimited JSON.

**Signature**

```ts
declare const encodeSchema: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, NdjsonError | Schema.SchemaError | IE, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L113)

Since v4.0.0