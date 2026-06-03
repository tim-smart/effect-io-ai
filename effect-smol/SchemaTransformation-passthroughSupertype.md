Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthroughSupertype

Transforms values without changing them, typed so that `T extends E`, where the decoded
type `T` is a subtype of the encoded type `E`.

**When to use**

Use when you need a no-op schema transformation whose decoded side is
narrower than the encoded side.

**Details**

Both decode and encode are no-ops and return a shared singleton
transformation.

**Example** (Supertype passthrough)

```ts
import { SchemaTransformation } from "effect"

const t = SchemaTransformation.passthroughSupertype<"a" | "b", string>()
```

**See**

- `passthrough`
- `passthroughSubtype`

**Signature**

```ts
declare const passthroughSupertype: <T extends E, E>() => Transformation<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L813)

Since v4.0.0