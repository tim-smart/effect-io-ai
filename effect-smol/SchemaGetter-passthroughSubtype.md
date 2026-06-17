Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.passthroughSubtype

Returns the identity getter, typed for when the encoded type `E` is a subtype of `T`.

**When to use**

Use when you need a schema getter that passes values through without
`{ strict: false }` for an encoded type that narrows the decoded type.

**Details**

- Same singleton as `passthrough` — no allocation, optimized in composition.

**Example** (Passing through subtypes)

```ts
import { SchemaGetter } from "effect"

// "hello" extends string, so E extends T
const g = SchemaGetter.passthroughSubtype<string, "hello">()
```

**See**

- `passthrough` when types are identical
- `passthroughSupertype` when `T extends E`

**Signature**

```ts
declare const passthroughSubtype: <T, E extends T>() => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L298)

Since v4.0.0