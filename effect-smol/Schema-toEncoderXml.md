Package: `effect`<br />
Module: `Schema`<br />

## Schema.toEncoderXml

Derives an XML encoder from a codec. Encodes a value to an XML string by
first converting it through `toCodecStringTree`, then serializing the
resulting tree to XML.

**Signature**

```ts
declare const toEncoderXml: <T, E, RD, RE>(codec: Codec<T, E, RD, RE>, options?: XmlEncoderOptions) => (t: T) => Effect.Effect<string, SchemaError, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11362)

Since v4.0.0