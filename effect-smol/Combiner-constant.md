Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.constant

Creates a `Combiner` that ignores both arguments and always returns the
given constant value.

When to use:
- You need a combiner that produces a fixed result regardless of input.
- You are providing a combiner to a generic API but the combined value is
  predetermined.

Behavior:
- `combine(self, that)` returns the constant `a`, ignoring both arguments.
- Pure – no mutation occurs.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L324)

Since v4.0.0