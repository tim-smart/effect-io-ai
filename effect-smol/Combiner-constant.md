Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.constant

Creates a `Combiner` that ignores both arguments and always returns the
given constant value.

**When to use**

Use when you need a combiner that always returns a fixed value, including
when a generic API requires a combiner but the result is predetermined.

**Details**

`combine(self, that)` returns the constant `a` and ignores both arguments.

**Example** (always returning zero)

```ts
import { Combiner } from "effect"

const Zero = Combiner.constant(0)

console.log(Zero.combine(42, 99))
// Output: 0
```

**See**

- `first`
- `last`

**Signature**

```ts
declare const constant: <A>(a: A) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L278)

Since v4.0.0