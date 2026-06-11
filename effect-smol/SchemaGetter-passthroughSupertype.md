Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.passthroughSupertype

Returns the identity getter typed for the relationship `T extends E`.

**When to use**

Use when you need a schema getter that passes values through when the
decoded/output type is narrower than the encoded/input type.

**Details**

- Same singleton as `passthrough` — no allocation, optimized in composition.

**Example** (Supertype passthrough)

```ts
import { SchemaGetter } from "effect"

// string extends string, so this is valid
const g = SchemaGetter.passthroughSupertype<string, string>()
```

**See**

- `passthrough` when types are identical
- `passthroughSubtype` when `E extends T`

**Signature**

```ts
declare const passthroughSupertype: <T extends E, E>() => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L266)

Since v4.0.0