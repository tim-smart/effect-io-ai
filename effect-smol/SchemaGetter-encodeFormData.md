Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeFormData

Encodes a nested object into a `FormData` instance using bracket-path notation.

**When to use**

Use to serialize structured data to `FormData` for HTTP requests.

**Details**

- Pure, never fails.
- Flattens nested objects/arrays into bracket-path keys (e.g. `user[name]`, `items[0]`).
- Non-object inputs produce an empty `FormData`.

**Example** (Encode to FormData)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeFormData()
// Getter<FormData, unknown>
```

**See**

- `decodeFormData` for the inverse operation
- `collectBracketPathEntries` for the underlying flattener
- `encodeURLSearchParams` for the URLSearchParams variant

**Signature**

```ts
declare const encodeFormData: () => Getter<FormData, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1657)

Since v4.0.0