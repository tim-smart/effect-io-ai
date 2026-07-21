Package: `effect`<br />
Module: `Schema`<br />

## Schema.revealCodec

Returns a codec widened to the full `Codec` interface, prompting
TypeScript to infer all four type parameters (`T`, `E`, `RD`, `RE`).

**Details**

When a schema is stored in a variable typed as `Schema<T>` or `Top`, the
encoded type and service requirements are erased. Passing the value through
`revealCodec` recovers those parameters without any runtime cost.

**Example** (Recovering encoded type from a schema variable)

```ts
import { Schema } from "effect"

const schema: Schema.Schema<number> = Schema.NumberFromString

// Without revealCodec, Encoded is unknown
const codec = Schema.revealCodec(schema)
type Enc = typeof codec["Encoded"] // string
```

**Signature**

```ts
declare const revealCodec: <T, E, RD, RE>(codec: Codec<T, E, RD, RE>) => Codec<T, E, RD, RE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1003)

Since v4.0.0