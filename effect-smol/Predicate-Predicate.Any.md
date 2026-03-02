Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate.Any

A utility type representing any predicate type.

When to use:
- You need a constraint for "any predicate" in generic code.

Behavior:
- Type-only; no runtime value is created.

**Example** (Generic constraint)

```ts
import { Predicate } from "effect"

type AnyPredicate = Predicate.Predicate.Any
```

See also: `Predicate.In`

**Signature**

```ts
type Any = Predicate<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L217)

Since v3.6.0