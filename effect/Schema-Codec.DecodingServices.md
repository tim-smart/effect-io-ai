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
type DecodingServices<S> = S extends { readonly "DecodingServices": infer R } ? R : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L871)

Since v4.0.0