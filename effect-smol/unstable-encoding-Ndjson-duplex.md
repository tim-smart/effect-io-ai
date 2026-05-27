Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.duplex

Wraps a bidirectional byte channel with NDJSON encoding and decoding.

**Details**

Outgoing values are written as UTF-8 NDJSON bytes, and incoming bytes are
parsed as NDJSON values.

**Signature**

```ts
declare const duplex: { (options?: { readonly ignoreEmptyLines?: boolean | undefined; }): <R, IE, OE, OutDone, InDone>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, OE, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array>, IE | NdjsonError, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, NdjsonError | OE, OutDone, Arr.NonEmptyReadonlyArray<unknown>, IE, InDone, R>; <R, IE, OE, OutDone, InDone>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, OE, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array>, IE | NdjsonError, InDone, R>, options?: { readonly ignoreEmptyLines?: boolean | undefined; }): Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, NdjsonError | OE, OutDone, Arr.NonEmptyReadonlyArray<unknown>, IE, InDone, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L296)

Since v4.0.0