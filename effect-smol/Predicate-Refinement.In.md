Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.In

Extracts the input type `A` from a `Refinement<A, B>`.

When to use:
- You want to infer the input type from a refinement type.

Behavior:
- Type-only; no runtime value is created.
- Resolves to `never` if the type does not match `Refinement`.

**Example** (Infer input)

```ts
import { Predicate } from "effect"

type R = Predicate.Refinement<unknown, string>
type Input = Predicate.Refinement.In<R>
```

See also: `Refinement.Out`, `Predicate.In`

**Signature**

```ts
type In<T> = [T] extends [Refinement<infer _A, infer _>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L272)

Since v3.6.0