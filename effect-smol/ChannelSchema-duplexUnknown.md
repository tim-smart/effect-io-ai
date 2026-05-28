Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.duplexUnknown

Wraps a bidirectional channel whose encoded chunks are typed as `unknown`.

**When to use**

Use when a bidirectional channel crosses an encoded boundary whose chunk types
are intentionally erased, while callers should send and receive schema-typed
chunks.

**Details**

The resulting channel accepts typed input chunks, encodes them with
`inputSchema`, decodes unknown output chunks with `outputSchema`, and
surfaces schema failures as `SchemaError`.

**See**

- `duplex` for the variant that preserves the schema encoded types on the wrapped channel

**Signature**

```ts
declare const duplexUnknown: { <In extends Schema.Top, Out extends Schema.Top>(options: { readonly inputSchema: In; readonly outputSchema: Out; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<any>, Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Top, OutErr, OutDone, In extends Schema.Top, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<any>, Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L298)

Since v4.0.0