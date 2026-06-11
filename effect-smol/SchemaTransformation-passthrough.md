Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthrough

Transforms values by returning the input unchanged in both
directions.

**When to use**

Use when you need a schema transformation to connect two schemas that share
the same type with no actual conversion.

**Details**

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

**See**

- `passthroughSupertype`
- `passthroughSubtype`
- `transform`

**Signature**

```ts
declare const passthrough: { <T, E>(options: { readonly strict: false; }): Transformation<T, E>; <T>(): Transformation<T, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L707)

Since v4.0.0