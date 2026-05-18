Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.passthroughSupertype

A passthrough transformation typed so that `T extends E`, where the decoded
type `T` is a subtype of the encoded type `E`.

Use this when the runtime value is unchanged but the decoded side should be
narrower than the encoded side. Both decode and encode are no-ops and return a
shared singleton transformation.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L779)

Since v4.0.0