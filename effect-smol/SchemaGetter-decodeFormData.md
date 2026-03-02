Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeFormData

Decodes a `FormData` object into a nested tree structure using bracket-path notation.

Use this when:
- Parsing `FormData` from HTTP requests into structured objects.

Behavior:
- Pure, never fails.
- Interprets bracket-path keys (e.g. `user[name]`, `items[0]`) to build nested objects/arrays.
- Leaf values are `string` or `Blob`.

**Example** (Decode FormData)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeFormData()
// Getter<TreeObject<string | Blob>, FormData>
```

See also:
- `encodeFormData` — inverse operation
- `makeTreeRecord` — the underlying bracket-path parser
- `decodeURLSearchParams` — similar for URLSearchParams

**Signature**

```ts
declare const decodeFormData: () => Getter<Schema.TreeObject<string | Blob>, FormData>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1520)

Since v4.0.0