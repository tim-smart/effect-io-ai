Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthroughSubtype

A passthrough transformation typed so that `E extends T` — the encoded
type is a subtype of the decoded type.

When to use this:
- Narrowing: the encoded side is more specific than the decoded side.

Behavior:
- Both decode and encode are no-ops (same as `passthrough`).
- Returns a shared singleton instance.

**Example** (Subtype passthrough)

```ts
import { SchemaTransformation } from "effect"

const t = SchemaTransformation.passthroughSubtype<string, "a" | "b">()
```

See also:
- `passthrough`
- `passthroughSupertype`

**Signature**

```ts
declare const passthroughSubtype: <T, E extends T>() => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L812)

Since v4.0.0