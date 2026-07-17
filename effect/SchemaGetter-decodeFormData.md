Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeFormData

Decodes a `FormData` object into a nested tree structure using bracket-path notation.

**When to use**

Use when you need a schema getter to parse `FormData` from HTTP requests into
structured objects.

**Details**

The getter is pure and never fails. It interprets bracket-path keys such as
`user[name]` and `items[0]` to build nested objects or arrays, and each leaf
value is a `string` or `Blob`.

**Example** (Decoding FormData)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeFormData()
// Getter<TreeObject<string | Blob>, FormData>
```

**See**

- `encodeFormData` for the inverse operation
- `makeTreeRecord` for the underlying bracket-path parser
- `decodeURLSearchParams` for the URLSearchParams variant

**Signature**

```ts
declare const decodeFormData: () => Getter<Schema.TreeRecord<string | Blob>, FormData>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1564)

Since v4.0.0