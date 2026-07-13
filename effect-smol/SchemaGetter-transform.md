Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transform

Creates a getter that applies a pure function to present values.

**When to use**

Use when you need a schema getter for a pure, infallible transformation
between types.
- Building encode/decode pairs for `Schema.decodeTo`.

**Details**

- This is the most commonly used constructor.
- Transforms `Some(e)` to `Some(f(e))` and leaves `None` unchanged.
- Skips `None` inputs — only called when a value is present.
- Never fails.

**Example** (Transforming strings to numbers)

```ts
import { Schema, SchemaGetter } from "effect"

const NumberFromString = Schema.String.pipe(
  Schema.decodeTo(Schema.Number, {
    decode: SchemaGetter.transform((s) => Number(s)),
    encode: SchemaGetter.transform((n) => String(n))
  })
)
```

**See**

- `transformOrFail` when the transformation can fail
- `transformOptional` when you need to handle `None` inputs
- `passthrough` when no transformation is needed

**Signature**

```ts
declare const transform: <T, E>(f: (e: E) => T) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L500)

Since v4.0.0