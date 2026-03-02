Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthroughSupertype

A passthrough transformation typed so that `T extends E` — the decoded
type is a supertype of the encoded type.

When to use this:
- Widening: the decoded side accepts a broader type than the encoded side.

Behavior:
- Both decode and encode are no-ops (same as `passthrough`).
- Returns a shared singleton instance.

**Example** (Supertype passthrough)

```ts
import { SchemaTransformation } from "effect"

const t = SchemaTransformation.passthroughSupertype<"a" | "b", string>()
```

See also:
- `passthrough`
- `passthroughSubtype`

**Signature**

```ts
declare const passthroughSupertype: <T extends E, E>() => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L778)

Since v4.0.0