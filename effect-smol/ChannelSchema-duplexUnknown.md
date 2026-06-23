Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.duplexUnknown

Wraps a bidirectional channel whose encoded chunks are typed as `unknown`.

**When to use**

Use when you need a bidirectional channel to cross an encoded boundary whose
chunk types are intentionally erased, while callers send and receive
schema-typed chunks.

**Details**

The resulting channel accepts typed input chunks, encodes them with
`inputSchema`, decodes unknown output chunks with `outputSchema`, and
surfaces schema failures as `SchemaError`.

**See**

- `duplex` for the variant that preserves the schema encoded types on the wrapped channel

**Signature**

```ts
declare const duplexUnknown: { <In extends Schema.Constraint, Out extends Schema.Constraint>(options: { readonly inputSchema: In; readonly outputSchema: Out; }): <OutErr, OutDone, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<any>, Schema.SchemaError | InErr, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; <Out extends Schema.Constraint, OutErr, OutDone, In extends Schema.Constraint, InErr, InDone, R>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, OutErr, OutDone, Arr.NonEmptyReadonlyArray<any>, Schema.SchemaError | InErr, InDone, R>, options: { readonly inputSchema: In; readonly outputSchema: Out; }): Channel.Channel<Arr.NonEmptyReadonlyArray<Out["Type"]>, Schema.SchemaError | OutErr, OutDone, Arr.NonEmptyReadonlyArray<In["Type"]>, InErr, InDone, R | In["EncodingServices"] | Out["DecodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L262)

Since v4.0.0