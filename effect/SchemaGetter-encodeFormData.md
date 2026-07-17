Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeFormData

Encodes a nested object into a `FormData` instance using bracket-path notation.

**When to use**

Use when you need a schema getter to serialize structured data to `FormData`
for HTTP requests.

**Details**

The getter is pure and never fails. It flattens nested objects or arrays into
bracket-path keys such as `user[name]` and `items[0]`. Non-object inputs
produce an empty `FormData`.

**Example** (Encoding to FormData)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1602)

Since v4.0.0