Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.encodeSchemaString

Creates an NDJSON string encoder channel for values of a schema.

**Details**

Values are first encoded with the schema and then written as newline-delimited
JSON strings.

**Signature**

```ts
declare const encodeSchemaString: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<string>, NdjsonError | Schema.SchemaError | IE, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L143)

Since v4.0.0