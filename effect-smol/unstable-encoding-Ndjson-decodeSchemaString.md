Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.decodeSchemaString

Creates an NDJSON string decoder channel for values of a schema.

**Details**

The channel parses each line as JSON and then decodes each parsed value with
the schema.

**Signature**

```ts
declare const decodeSchemaString: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>(options?: { readonly ignoreEmptyLines?: boolean | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, Schema.SchemaError | NdjsonError | IE, Done, Arr.NonEmptyReadonlyArray<string>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L275)

Since v4.0.0