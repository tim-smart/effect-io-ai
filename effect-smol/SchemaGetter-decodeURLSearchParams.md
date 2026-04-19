Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeURLSearchParams

Decodes a `URLSearchParams` object into a nested tree structure using bracket-path notation.

Use this when:
- Parsing query parameters from URLs into structured objects.

Behavior:
- Pure, never fails.
- Interprets bracket-path keys (e.g. `user[name]`, `items[0]`) to build nested objects/arrays.
- Leaf values are `string`.

**Example** (Decode URLSearchParams)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeURLSearchParams()
// Getter<TreeObject<string>, URLSearchParams>
```

See also:
- `encodeURLSearchParams` — inverse operation
- `makeTreeRecord` — the underlying bracket-path parser
- `decodeFormData` — similar for FormData

**Signature**

```ts
declare const decodeURLSearchParams: () => Getter<Schema.TreeRecord<string>, URLSearchParams>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1653)

Since v4.0.0