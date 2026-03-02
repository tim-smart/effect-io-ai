Package: `effect`<br />
Module: `Types`<br />

## Types.Invariant

Function-type alias encoding invariant variance for a phantom type
parameter.

- Use as a phantom field type to make a type parameter invariant (neither
  covariant nor contravariant).
- A value of type `Invariant<A>` cannot be assigned to `Invariant<B>`
  unless `A` and `B` are the same type.

**Example** (Invariant phantom type)

```ts
import type { Types } from "effect"

interface Container<T> {
  readonly _phantom: Types.Invariant<T>
  readonly value: T
}
```

**See**

- `Invariant.Type`
- `Covariant`
- `Contravariant`

**Signature**

```ts
type Invariant<A> = (_: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L569)

Since v2.0.0