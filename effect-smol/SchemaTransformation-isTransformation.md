Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.isTransformation

Returns `true` if `u` is a `Transformation` instance.

**When to use**

Use to check whether a value is already a schema transformation before
wrapping it.

**Details**

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

**See**

- `Transformation`
- `make`

**Signature**

```ts
declare const isTransformation: (u: unknown) => u is Transformation<any, any, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L197)

Since v4.0.0