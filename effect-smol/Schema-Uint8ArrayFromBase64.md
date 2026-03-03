Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayFromBase64

A transformation schema that decodes a base64 encoded string into a
`Uint8Array`.

Decoding:
- A **valid** base64 encoded string is decoded as a `Uint8Array`.

Encoding:
- A `Uint8Array` is encoded as a base64-encoded string.

**Signature**

```ts
declare const Uint8ArrayFromBase64: Uint8ArrayFromBase64
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7645)

Since v4.0.0