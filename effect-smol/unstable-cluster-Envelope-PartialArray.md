Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.PartialArray

Mutable array schema for JSON-encoded partial cluster envelopes.

**Signature**

```ts
declare const PartialArray: Schema.mutable<Schema.$Array<Schema.Codec<PartialRequest | AckChunk | Interrupt, Encoded, never, never>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L311)

Since v4.0.0