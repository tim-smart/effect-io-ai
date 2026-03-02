Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeFormData

Encodes a nested object into a `FormData` instance using bracket-path notation.

Use this when:
- Serializing structured data to `FormData` for HTTP requests.

Behavior:
- Pure, never fails.
- Flattens nested objects/arrays into bracket-path keys (e.g. `user[name]`, `items[0]`).
- Non-object inputs produce an empty `FormData`.

**Example** (Encode to FormData)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeFormData()
// Getter<FormData, unknown>
```

See also:
- `decodeFormData` — inverse operation
- `collectBracketPathEntries` — the underlying flattener
- `encodeURLSearchParams` — similar for URLSearchParams

**Signature**

```ts
declare const encodeFormData: () => Getter<FormData, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1556)

Since v4.0.0