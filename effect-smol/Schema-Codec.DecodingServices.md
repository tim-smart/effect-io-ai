Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec.DecodingServices

Extracts the Effect services required during *decoding* from a schema.

**Example** (Checking decoding service requirements)

```ts
import { Schema } from "effect"

const schema = Schema.String
type RD = Schema.Codec.DecodingServices<typeof schema>
// never
```

**Signature**

```ts
type DecodingServices<S> = S extends Top ? S["DecodingServices"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L646)

Since v4.0.0