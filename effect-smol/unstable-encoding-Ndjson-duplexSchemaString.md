Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.duplexSchemaString

Wraps a bidirectional string channel with schema-aware NDJSON encoding and
decoding.

**Details**

Values sent to the wrapped channel are encoded with `inputSchema`; strings
received from it are parsed as NDJSON and decoded with `outputSchema`.

**Signature**

```ts
declare const duplexSchemaString: { <In extends Schema.Constraint, Out extends Schema.Constraint>(options: { readonly inputSchema: In; readonly outputSchema: Out; readonly ignoreEmptyLines?: boolean | undefined; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<string>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<string>, NdjsonError | Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, NdjsonError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Constraint, In extends Schema.Constraint, OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<string>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<string>, NdjsonError | Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; readonly ignoreEmptyLines?: boolean | undefined; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, NdjsonError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L529)

Since v4.0.0