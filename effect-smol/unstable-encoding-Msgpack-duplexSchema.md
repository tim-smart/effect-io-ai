Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.duplexSchema

Wraps a bidirectional byte channel with schema-aware MessagePack encoding and
decoding.

Values sent to the wrapped channel are encoded with `inputSchema` and packed
as MessagePack bytes; bytes received from it are unpacked and decoded with
`outputSchema`.

**Signature**

```ts
declare const duplexSchema: { <In extends Schema.Top, Out extends Schema.Top>(options: { readonly inputSchema: In; readonly outputSchema: Out; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, MsgPackError | Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, MsgPackError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Top, In extends Schema.Top, OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, MsgPackError | Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, MsgPackError | Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L239)

Since v4.0.0