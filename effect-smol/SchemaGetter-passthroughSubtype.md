Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.passthroughSubtype

Returns the identity getter, typed for when the encoded type `E` is a subtype of `T`.

Use this when:
- The encoded type is narrower than the decoded type.
- You need type-safe passthrough without `{ strict: false }`.

Behavior:
- Same singleton as `passthrough` — no allocation, optimized in composition.

**Example** (Subtype passthrough)

```ts
import { SchemaGetter } from "effect"

// "hello" extends string, so E extends T
const g = SchemaGetter.passthroughSubtype<string, "hello">()
```

See also:
- `passthrough` — when types are identical
- `passthroughSupertype` — when `T extends E`

**Signature**

```ts
declare const passthroughSubtype: <T, E extends T>() => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L366)

Since v4.0.0