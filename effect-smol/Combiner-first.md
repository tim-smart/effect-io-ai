Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.first

Creates a `Combiner` that always returns the first (left) argument.

When to use:
- You want "first write wins" semantics when merging values.
- You need a combiner but the combining logic should be a no-op that keeps
  the existing value.

Behavior:
- `combine(self, that)` returns `self`, ignoring `that`.
- Pure – the second argument is discarded, not mutated.

**Example** (keeping the first value)

```ts
import { Combiner } from "effect"

const First = Combiner.first<number>()

console.log(First.combine(1, 2))
// Output: 1
```

**See**

- `last`

**Signature**

```ts
declare const first: <A>() => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L261)

Since v4.0.0