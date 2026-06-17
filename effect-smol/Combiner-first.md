Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.first

Creates a `Combiner` that always returns the first (left) argument.

**When to use**

Use when you want "first write wins" semantics while merging values.

**Details**

`combine(self, that)` returns `self` and ignores `that`.

**Example** (Keeping the first value)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L215)

Since v4.0.0