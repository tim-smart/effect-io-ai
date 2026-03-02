Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.Transformation

A bidirectional transformation between a decoded type `T` and an encoded
type `E`, built from a pair of `Getter`s.

This is the primary building block for `Schema.decodeTo`, `Schema.encodeTo`,
`Schema.decode`, `Schema.encode`, and `Schema.link`. Each direction is a
`SchemaGetter.Getter` that handles optionality, failure, and Effect services.

When to use this:
- You need to define how a schema converts between two representations.
- You want to compose multiple transformations into a pipeline.
- You want to flip a transformation to swap decode/encode.

Behavior:
- Immutable — `flip()` and `compose()` return new instances.
- `flip()` swaps the decode and encode getters.
- `compose(other)` chains: `this.decode` then `other.decode` for decoding,
  `other.encode` then `this.encode` for encoding.

**Example** (Composing two transformations)

```ts
import { SchemaTransformation } from "effect"

const trimAndLower = SchemaTransformation.trim().compose(
  SchemaTransformation.toLowerCase()
)
// decode: trim then lowercase
// encode: passthrough (both directions)
```

See also:
- `make` — construct from `{ decode, encode }` getters
- `transform` — construct from pure functions
- `transformOrFail` — construct from effectful functions
- `Middleware` — effect-pipeline-level alternative

**Signature**

```ts
declare class Transformation<T, E, RD, RE> { constructor(
    decode: Getter.Getter<T, E, RD>,
    encode: Getter.Getter<E, T, RE>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L208)

Since v4.0.0