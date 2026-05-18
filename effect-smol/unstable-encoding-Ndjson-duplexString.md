Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.duplexString

Wraps a bidirectional string channel with NDJSON encoding and decoding.

Outgoing values are written as NDJSON strings, and incoming strings are parsed
as NDJSON values.

**Signature**

```ts
declare const duplexString: { (options?: { readonly ignoreEmptyLines?: boolean | undefined; }): <R, IE, OE, OutDone, InDone>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<string>, OE, OutDone, Arr.NonEmptyReadonlyArray<string>, IE | NdjsonError, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, NdjsonError | OE, OutDone, Arr.NonEmptyReadonlyArray<unknown>, IE, InDone, R>; <R, IE, OE, OutDone, InDone>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<string>, OE, OutDone, Arr.NonEmptyReadonlyArray<string>, IE | NdjsonError, InDone, R>, options?: { readonly ignoreEmptyLines?: boolean | undefined; }): Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, NdjsonError | OE, OutDone, Arr.NonEmptyReadonlyArray<unknown>, IE, InDone, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L340)

Since v4.0.0