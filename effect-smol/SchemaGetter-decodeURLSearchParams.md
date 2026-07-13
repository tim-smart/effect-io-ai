Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeURLSearchParams

Decodes a `URLSearchParams` object into a nested tree structure using bracket-path notation.

**When to use**

Use when you need a schema getter to parse query parameters from URLs into
structured objects.

**Details**

The getter is pure and never fails. It interprets bracket-path keys such as
`user[name]` and `items[0]` to build nested objects or arrays, and each leaf
value is a `string`.

**Example** (Decoding URLSearchParams)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeURLSearchParams()
// Getter<TreeObject<string>, URLSearchParams>
```

**See**

- `encodeURLSearchParams` for the inverse operation
- `makeTreeRecord` for the underlying bracket-path parser
- `decodeFormData` for the FormData variant

**Signature**

```ts
declare const decodeURLSearchParams: () => Getter<Schema.TreeRecord<string>, URLSearchParams>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1645)

Since v4.0.0