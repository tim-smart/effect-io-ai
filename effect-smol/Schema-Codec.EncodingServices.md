Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec.EncodingServices

Extracts the Effect services required during *encoding* from a schema.

**Example** (Checking encoding service requirements)

```ts
import { Schema } from "effect"

const schema = Schema.String
type RE = Schema.Codec.EncodingServices<typeof schema>
// never
```

**Signature**

```ts
type EncodingServices<S> = S extends Top ? S["EncodingServices"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L696)

Since v4.0.0