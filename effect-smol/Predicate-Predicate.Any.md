Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate.Any

A utility type representing any predicate type.

**When to use**

Use when you need a constraint for "any predicate" in generic code.

**Details**

This is type-only and creates no runtime value.

**Example** (Using generic constraints)

```ts
import { Predicate } from "effect"

type AnyPredicate = Predicate.Predicate.Any
```

**See**

- `Predicate.In`

**Signature**

```ts
type Any = Predicate<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L196)

Since v3.6.0