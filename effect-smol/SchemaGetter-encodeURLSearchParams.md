Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeURLSearchParams

Encodes a nested object into a `URLSearchParams` instance using bracket-path notation.

**When to use**

Use when you need a schema getter to serialize structured data to query
parameters for URLs.

**Details**

The getter is pure and never fails. It flattens nested objects or arrays into
bracket-path keys. Non-object inputs produce an empty `URLSearchParams`.

**Example** (Encoding to URLSearchParams)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1680)

Since v4.0.0