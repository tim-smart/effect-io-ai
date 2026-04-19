Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeURLSearchParams

Encodes a nested object into a `URLSearchParams` instance using bracket-path notation.

Use this when:
- Serializing structured data to query parameters for URLs.

Behavior:
- Pure, never fails.
- Flattens nested objects/arrays into bracket-path keys.
- Non-object inputs produce an empty `URLSearchParams`.

**Example** (Encode to URLSearchParams)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeURLSearchParams()
// Getter<URLSearchParams, unknown>
```

See also:
- `decodeURLSearchParams` — inverse operation
- `collectBracketPathEntries` — the underlying flattener
- `encodeFormData` — similar for FormData

**Signature**

```ts
declare const encodeURLSearchParams: () => Getter<URLSearchParams, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1687)

Since v4.0.0