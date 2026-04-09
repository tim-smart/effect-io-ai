Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthrough

The identity transformation — returns the input unchanged in both
directions.

When to use this:
- Connecting two schemas that share the same type with no conversion.
- As a placeholder when `Schema.decodeTo` requires a transformation but
  no actual conversion is needed.

Behavior:
- Both decode and encode are no-ops.
- Returns a shared singleton instance (no allocation per call).
- By default, `T` and `E` must be the same type. Pass `{ strict: false }`
  to bypass the type constraint.

**Example** (Chaining schemas with no conversion)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Trim.pipe(
  Schema.decodeTo(Schema.FiniteFromString, SchemaTransformation.passthrough())
)
```

See also:
- `passthroughSupertype`
- `passthroughSubtype`
- `transform`

**Signature**

```ts
declare const passthrough: { <T, E>(options: { readonly strict: false; }): Transformation<T, E>; <T>(): Transformation<T, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L752)

Since v4.0.0