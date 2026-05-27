Package: `effect`<br />
Module: `Schema`<br />

## Schema.toEncoderXml

Derives an XML encoder from a codec.

**Details**

The returned function encodes a value through `toCodecStringTree` and returns
an `Effect` that succeeds with the XML string or fails with `SchemaError` if
codec encoding fails.

**Signature**

```ts
declare const toEncoderXml: <T, E, RD, RE>(codec: Codec<T, E, RD, RE>, options?: XmlEncoderOptions) => (t: T) => Effect.Effect<string, SchemaError, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12701)

Since v4.0.0