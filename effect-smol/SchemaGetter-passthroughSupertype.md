Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.passthroughSupertype

Returns the identity getter, typed for when the decoded type `T` is a supertype of `E`.

Use this when:
- The decoded type is wider than the encoded type (e.g. `string` from a string literal).
- You need type-safe passthrough without `{ strict: false }`.

Behavior:
- Same singleton as `passthrough` — no allocation, optimized in composition.

**Example** (Supertype passthrough)

```ts
import { SchemaGetter } from "effect"

// string extends string, so this is valid
const g = SchemaGetter.passthroughSupertype<string, string>()
```

See also:
- `passthrough` — when types are identical
- `passthroughSubtype` — when `E extends T`

**Signature**

```ts
declare const passthroughSupertype: <T extends E, E>() => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L334)

Since v4.0.0