Package: `effect`<br />
Module: `Types`<br />

## Types.Contravariant

Function-type alias encoding contravariant variance for a phantom type
parameter.

- Use as a phantom field type to make a type parameter contravariant
  (input position).
- `Contravariant<A>` is assignable to `Contravariant<B>` when `B extends A`
  (supertype direction).

**Example** (Contravariant phantom type)

```ts
import type { Types } from "effect"

interface Consumer<T> {
  readonly _phantom: Types.Contravariant<T>
  readonly accept: (value: T) => void
}
```

**See**

- `Contravariant.Type`
- `Covariant`
- `Invariant`

**Signature**

```ts
type Contravariant<A> = (_: A) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L681)

Since v2.0.0