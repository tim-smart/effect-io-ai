Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.make

Constructs a `Transformation` from an object with `decode` and `encode`
`Getter`s. If the input is already a `Transformation`, returns it as-is.

When to use this:
- You already have `Getter` instances and want to pair them.
- You want idempotent wrapping (won't double-wrap).

Behavior:
- Does not mutate the input.
- Returns the input unchanged if it is already a `Transformation`.

**Example** (Wrapping existing getters)

```ts
import { SchemaGetter, SchemaTransformation } from "effect"

const t = SchemaTransformation.make({
  decode: SchemaGetter.transform<number, string>((s) => Number(s)),
  encode: SchemaGetter.transform<string, number>((n) => String(n))
})
```

See also:
- `transform` — simpler constructor from pure functions
- `transformOrFail` — constructor from effectful functions
- `Transformation`

**Signature**

```ts
declare const make: <T, E, RD = never, RE = never>(options: { readonly decode: Getter.Getter<T, E, RD>; readonly encode: Getter.Getter<E, T, RE>; }) => Transformation<T, E, RD, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L294)

Since v4.0.0