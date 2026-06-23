Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.duplex

Wraps a channel so callers work with typed input and output chunks while the
wrapped channel uses encoded chunks.

**When to use**

Use to expose typed input and output at a bidirectional channel boundary
while the wrapped channel continues to operate on schema-encoded chunks.

**Details**

Values sent into the resulting channel are encoded with `inputSchema` before
reaching the wrapped channel. Values emitted by the wrapped channel are
decoded with `outputSchema` before they are emitted downstream. Schema
failures are surfaced as `SchemaError`.

**See**

- `duplexUnknown` for the variant whose encoded side is intentionally untyped
- `encode` for encoding typed chunks at one-way channel boundaries
- `decode` for decoding encoded chunks at one-way channel boundaries

**Signature**

```ts
declare const duplex: { <In extends Schema.Constraint, Out extends Schema.Constraint>(options: { readonly inputSchema: In; readonly outputSchema: Out; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Encoded"]>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Encoded"]>, Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Constraint, OutErr, OutDone, In extends Schema.Constraint, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Encoded"]>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Encoded"]>, Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L168)

Since v4.0.0