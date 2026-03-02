Package: `effect`<br />
Module: `Types`<br />

## Types.Covariant

Function-type alias encoding covariant variance for a phantom type
parameter.

- Use as a phantom field type to make a type parameter covariant
  (output position).
- `Covariant<A>` is assignable to `Covariant<B>` when `A extends B`
  (subtype direction).

**Example** (Covariant phantom type)

```ts
import type { Types } from "effect"

interface Producer<T> {
  readonly _phantom: Types.Covariant<T>
  readonly get: () => T
}
```

**See**

- `Covariant.Type`
- `Contravariant`
- `Invariant`

**Signature**

```ts
type Covariant<A> = (_: never) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L625)

Since v2.0.0