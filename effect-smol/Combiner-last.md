Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.last

Creates a `Combiner` that always returns the last (right) argument.

When to use:
- You want "last write wins" semantics when merging values.
- You need a combiner that replaces the accumulator with each new value.

Behavior:
- `combine(self, that)` returns `that`, ignoring `self`.
- Pure – the first argument is discarded, not mutated.

**Example** (keeping the last value)

```ts
import { Combiner } from "effect"

const Last = Combiner.last<number>()

console.log(Last.combine(1, 2))
// Output: 2
```

**See**

- `first`

**Signature**

```ts
declare const last: <A>() => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L291)

Since v4.0.0