Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.PredicateTypeLambda

Type-level lambda for higher-kinded usage of `Predicate`.

When to use:
- You are defining APIs that abstract over predicates with HKTs.
- You need a `TypeLambda` instance for predicate-based type classes.

Behavior:
- Type-only; no runtime value is created.
- Does not affect emitted JavaScript.

**Example** (Type-level usage)

```ts
import { Predicate } from "effect"

type P = Predicate.Predicate<number>
type TL = Predicate.PredicateTypeLambda
```

See also: `Predicate`

**Signature**

```ts
export interface PredicateTypeLambda extends TypeLambda {
  readonly type: Predicate<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L103)

Since v2.0.0