Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.isTransformation

Returns `true` if `u` is a `Transformation` instance.

When to use this:
- Checking whether a value is already a Transformation before wrapping it.

Behavior:
- Pure predicate, no side effects.
- Acts as a TypeScript type guard.

**Example** (Checking a value)

```ts
import { SchemaTransformation } from "effect"

SchemaTransformation.isTransformation(SchemaTransformation.trim())
// true

SchemaTransformation.isTransformation({ decode: null, encode: null })
// false
```

See also:
- `Transformation`
- `make`

**Signature**

```ts
declare const isTransformation: (u: unknown) => u is Transformation<any, any, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L264)

Since v4.0.0