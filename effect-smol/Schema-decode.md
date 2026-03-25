Package: `effect`<br />
Module: `Schema`<br />

## Schema.decode

Applies a transformation to a schema, creating a new schema with the same type but transformed encoding/decoding.

This is a curried function: call it with a transformation object, then call the returned function with a schema.
The resulting schema has `Type = S["Type"]` and `Encoded = S["Encoded"]`, with the transformation applied during
encoding and decoding operations.

**Key guarantees:**
- Resulting schema has `Type = S["Type"]` and `Encoded = S["Encoded"]`
- Uses `toType(self)` as the target schema internally (creates a schema where both Type and Encoded are `S["Type"]`)
- Combines decoding/encoding services from the source schema and transformation
- Transformation `decode` maps `S["Type"]` → `S["Type"]` (used during encoding)
- Transformation `encode` maps `S["Type"]` → `S["Type"]` (used during decoding)

**AI note - Common mistakes:**
- **Currying**: This is curried - must use pipe: `schema.pipe(Schema.decode(transformation))`
- **Transformation direction**: `decode` and `encode` both operate on `S["Type"]` (same type, different values)
- **Service dependencies**: Resulting schema requires services from the source schema and transformation; use `Schema.provideService` if needed

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
declare const decode: <S extends Top, RD = never, RE = never>(transformation: { readonly decode: Getter.Getter<S["Type"], S["Type"], RD>; readonly encode: Getter.Getter<S["Type"], S["Type"], RE>; }) => (self: S) => decodeTo<toType<S>, S, RD, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4137)

Since v4.0.0