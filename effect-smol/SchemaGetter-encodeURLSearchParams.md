Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeURLSearchParams

Encodes a nested object into a `URLSearchParams` instance using bracket-path notation.

**When to use**

Use to serialize structured data to query parameters for URLs.

**Details**

- Pure, never fails.
- Flattens nested objects/arrays into bracket-path keys.
- Non-object inputs produce an empty `URLSearchParams`.

**Example** (Encode to URLSearchParams)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeURLSearchParams()
// Getter<URLSearchParams, unknown>
```

**See**

- `decodeURLSearchParams` for the inverse operation
- `collectBracketPathEntries` for the underlying flattener
- `encodeFormData` for the FormData variant

**Signature**

```ts
declare const encodeURLSearchParams: () => Getter<URLSearchParams, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1736)

Since v4.0.0