Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.duplex

Wraps a channel so callers work with typed input and output chunks while the
wrapped channel uses encoded chunks.

**Details**

Values sent into the resulting channel are encoded with `inputSchema` before
reaching the wrapped channel. Values emitted by the wrapped channel are
decoded with `outputSchema` before they are emitted downstream. Schema
failures are surfaced as `SchemaError`.

**Signature**

```ts
declare const duplex: { <In extends Schema.Top, Out extends Schema.Top>(options: { readonly inputSchema: In; readonly outputSchema: Out; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Encoded"]>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Encoded"]>, Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Top, OutErr, OutDone, In extends Schema.Top, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Encoded"]>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Encoded"]>, Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L171)

Since v4.0.0