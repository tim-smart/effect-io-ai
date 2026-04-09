Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec.Encoded

Extracts the encoded (`Encoded`) type from a schema.

**Example** (Extracting the encoded type)

```ts
import { Schema } from "effect"

const schema = Schema.NumberFromString
type Enc = Schema.Codec.Encoded<typeof schema>
// string
```

**Signature**

```ts
type Encoded<S> = S extends Top ? S["Encoded"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L632)

Since v4.0.0