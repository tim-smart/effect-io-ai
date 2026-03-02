Package: `effect`<br />
Module: `Array`<br />

## Array.Do

Starting point for the "do simulation" — an array comprehension pattern.

- Begin a pipeline with `Do`, then use `bind` to introduce array variables and `let` for plain values.
- Each `bind` produces the cartesian product of all bound variables (like nested loops).
- Use `filter` and `map` in the pipeline to add conditions and transformations.

**Example** (Array comprehension with do notation)

```ts
import { Array, pipe } from "effect"

const result = pipe(
  Array.Do,
  Array.bind("x", () => [1, 3, 5]),
  Array.bind("y", () => [2, 4, 6]),
  Array.filter(({ x, y }) => x < y),
  Array.map(({ x, y }) => [x, y] as const)
)
console.log(result) // [[1, 2], [1, 4], [1, 6], [3, 4], [3, 6], [5, 6]]
```

**See**

- `bind` — introduce an array variable into the scope
- `bindTo` — start a pipeline by naming the first array
- `let` — introduce a plain computed value

**Signature**

```ts
declare const Do: ReadonlyArray<{}>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4110)

Since v3.2.0