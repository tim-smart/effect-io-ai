Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayFromHex

A transformation schema that decodes a hex encoded string into a
`Uint8Array`.

Decoding:
- A **valid** hex encoded string is decoded as a `Uint8Array`.

Encoding:
- A `Uint8Array` is encoded as a hex encoded string.

**Signature**

```ts
declare const Uint8ArrayFromHex: Uint8ArrayFromHex
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7615)

Since v4.0.0