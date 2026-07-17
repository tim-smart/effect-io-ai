Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.PartialArray

Schema for mutable arrays of JSON-encoded partial cluster envelopes.

**Signature**

```ts
declare const PartialArray: Schema.mutable<Schema.$Array<Schema.Codec<PartialRequest | AckChunk | Interrupt, Encoded, never, never>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Envelope.ts#L297)

Since v4.0.0