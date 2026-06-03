Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthroughSubtype

Transforms values without changing them, typed so that `E extends T` — the encoded
type is a subtype of the decoded type.

**When to use**

Use when you need a no-op schema transformation whose encoded side is more
specific than its decoded side.

**Details**

- Both decode and encode are no-ops (same as `passthrough`).
- Returns a shared singleton instance.

**Example** (Subtype passthrough)

```ts
import { SchemaTransformation } from "effect"

const t = SchemaTransformation.passthroughSubtype<string, "a" | "b">()
```

**See**

- `passthrough`
- `passthroughSupertype`

**Signature**

```ts
declare const passthroughSubtype: <T, E extends T>() => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L846)

Since v4.0.0