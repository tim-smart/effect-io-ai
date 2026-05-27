Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.intercalate

Wraps a `Combiner` so that a separator value is inserted between every
pair of combined elements.

**When to use**

Use when you are building delimited strings (CSV, paths, etc.) by
repeated combination, or when you need to inject a fixed separator between
accumulated values.

**Details**

`intercalate(middle)(combiner).combine(self, that)` is equivalent to
`combiner.combine(self, combiner.combine(middle, that))`. This function is
curried: first provide the separator, then the base combiner. It returns a
new combiner and does not mutate the input combiner.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Combiner.ts#L372)

Since v4.0.0