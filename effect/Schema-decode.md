Package: `effect`<br />
Module: `Schema`<br />

## Schema.decode

Applies a transformation to a schema, creating a new schema with the same type but transformed encoding/decoding.

**When to use**

Use when the decoded type stays the same and the transformation only
normalizes values during encoding and decoding.

**Details**

Call it with a transformation object and then pipe a schema into the returned
function. The resulting schema keeps the same `Type` and `Encoded` types as
the source schema, while applying the transformation during both decoding and
encoding.

Internally this uses `toType(self)` as the target schema and combines service
requirements from the source schema and the transformation.

**Gotchas**

Use `decodeTo` instead when the transformation should change the
decoded type. For this helper, both transformation getters operate on
`S["Type"]` values.

**Example** (Trimming string values during encoding/decoding)

```ts
import { Schema, SchemaGetter } from "effect"

const Trimmed = Schema.String.pipe(
  Schema.decode({
    decode: SchemaGetter.transform((s) => s.trim()),
    encode: SchemaGetter.transform((s) => s.trim())
  })
)

const result = Schema.decodeUnknownSync(Trimmed)("  hello  ")
// result: "hello"
```

**Signature**

```ts
declare const decode: <S extends Constraint, RD = never, RE = never>(transformation: { readonly decode: SchemaGetter.Getter<S["Type"], S["Type"], RD>; readonly encode: SchemaGetter.Getter<S["Type"], S["Type"], RE>; }) => (self: S) => decodeTo<toType<S>, S, RD, RE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5530)

Since v3.10.0