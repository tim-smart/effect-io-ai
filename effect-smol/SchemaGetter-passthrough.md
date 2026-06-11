Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.passthrough

Returns the identity getter — passes the value through unchanged.

**When to use**

Use when you need a schema getter for one side of a `decodeTo` pair, either
encode or decode, to pass values through unchanged.

**Details**

- Pure, no allocation (singleton instance).
- Optimized away during `.compose()` — composing with a passthrough is free.
- The default overload requires `T === E`. Pass `{ strict: false }` to opt
  out of the type constraint.

**Example** (Identity transformation)

```ts
import { Schema, SchemaGetter } from "effect"

// No transformation needed — types already match
const StringToString = Schema.String.pipe(
  Schema.decodeTo(Schema.String, {
    decode: SchemaGetter.passthrough(),
    encode: SchemaGetter.passthrough()
  })
)
```

**See**

- `passthroughSupertype` when `T extends E`
- `passthroughSubtype` when `E extends T`
- `transform` when you need to change the value

**Signature**

```ts
declare const passthrough: { <T, E>(options: { readonly strict: false; }): Getter<T, E>; <T>(): Getter<T, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L234)

Since v4.0.0