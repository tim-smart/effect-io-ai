Package: `effect`<br />
Module: `Combiner`<br />

## Combiner.intercalate

Wraps a `Combiner` so that a separator value is inserted between every
pair of combined elements.

**When to use**

Use when you need to inject a fixed separator between accumulated values,
such as when building delimited strings, paths, or CSV-like output by
repeated combination.

**Details**

`intercalate(middle)(combiner).combine(self, that)` is equivalent to
`combiner.combine(self, combiner.combine(middle, that))`. This function is
curried: first provide the separator, then the base combiner.

**Example** (Joining strings with a separator)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Combiner.ts#L313)

Since v4.0.0