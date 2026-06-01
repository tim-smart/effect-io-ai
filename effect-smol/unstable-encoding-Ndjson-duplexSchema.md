Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.duplexSchema

Wraps a bidirectional byte channel with schema-aware NDJSON encoding and
decoding.

**Details**

Values sent to the wrapped channel are encoded with `inputSchema`; bytes
received from it are parsed as NDJSON and decoded with `outputSchema`.

**Signature**

```ts
declare const duplexSchema: { <In extends Schema.Top, Out extends Schema.Top>(options: { readonly inputSchema: In; readonly outputSchema: Out; readonly ignoreEmptyLines?: boolean | undefined; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array>, NdjsonError | Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, NdjsonError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Top, In extends Schema.Top, OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array>, NdjsonError | Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; readonly ignoreEmptyLines?: boolean | undefined; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, NdjsonError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L466)

Since v4.0.0