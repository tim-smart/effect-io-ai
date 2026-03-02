Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement.Any

A utility type representing any refinement type.

When to use:
- You need a constraint for "any refinement" in generic code.

Behavior:
- Type-only; no runtime value is created.

**Example** (Generic constraint)

```ts
import { Predicate } from "effect"

type AnyRefinement = Predicate.Refinement.Any
```

See also: `Refinement.In`, `Refinement.Out`

**Signature**

```ts
type Any = Refinement<any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L322)

Since v3.6.0