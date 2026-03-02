Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.intercalate

Wraps a `Combiner` so that a separator value is inserted between every
pair of combined elements.

When to use:
- You are building delimited strings (CSV, paths, etc.) by repeated
  combination.
- You need to inject a fixed separator between accumulated values.

Behavior:
- `intercalate(middle)(combiner).combine(self, that)` is equivalent to
  `combiner.combine(self, combiner.combine(middle, that))`.
- Curried: first provide the separator, then the base combiner.
- Does not mutate the input combiner; returns a new one.

**Example** (joining strings with a separator)

```ts
import { Combiner, String } from "effect"

const commaSep = Combiner.intercalate(",")(String.ReducerConcat)

console.log(commaSep.combine("a", "b"))
// Output: "a,b"
```

**See**

- `make`

**Signature**

```ts
declare const intercalate: <A>(middle: A) => (combiner: Combiner<A>) => Combiner<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L358)

Since v4.0.0