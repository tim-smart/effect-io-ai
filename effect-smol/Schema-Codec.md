Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec

A schema that tracks the decoded type `T`, the encoded type `E`, and the
Effect services required during decoding (`RD`) and encoding (`RE`).

Use `Codec<T, E, RD, RE>` when you need to preserve full type information
about a schema — both what it decodes to and what it serializes from/to.
Most concrete schemas produced by this module implement `Codec`.

For APIs that only need one direction, prefer the narrower views:
- `Decoder``<T, RD>` — decode-only
- `Encoder``<E, RE>` — encode-only
- `Schema``<T>` — type-only (no encoded representation)

**Example** (Accepting a codec that decodes to `number` from `string`)

```ts
import { Schema } from "effect"

declare function serialize<T>(codec: Schema.Codec<T, string>): string

serialize(Schema.NumberFromString) // ok — decodes number, encoded as string
```

**See**

- `Codec.Encoded` — extract the encoded type
- `Codec.DecodingServices` — extract required decoding services
- `Codec.EncodingServices` — extract required encoding services
- `revealCodec` — helper to make TypeScript infer the full Codec type

**Signature**

```ts
export interface Codec<out T, out E = T, out RD = never, out RE = never> extends Schema<T> {
  readonly "Encoded": E
  readonly "DecodingServices": RD
  readonly "EncodingServices": RE
  readonly "Rebuild": Codec<T, E, RD, RE>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L761)

Since v4.0.0