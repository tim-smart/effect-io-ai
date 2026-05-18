Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.encode

Creates a channel that encodes chunks of values as UTF-8 NDJSON bytes.

**Signature**

```ts
declare const encode: <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, IE | NdjsonError, Done, Arr.NonEmptyReadonlyArray<unknown>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L95)

Since v4.0.0