Package: `effect`<br />
Module: `Result`<br />

## Result.Do

Starting point for the "do notation" simulation with `Result`.

Creates a `Result<{}>` (success with an empty object). Use with
`bind` to add `Result`-producing fields and `let`
to add pure computed fields.

**Example** (Building an object step by step)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.Do,
  Result.bind("x", () => Result.succeed(2)),
  Result.bind("y", () => Result.succeed(3)),
  Result.let("sum", ({ x, y }) => x + y)
)
console.log(result)
// Output: { _tag: "Success", success: { x: 2, y: 3, sum: 5 }, ... }
```

**See**

- `bind` to add Result-producing fields
- `let` to add pure computed fields
- `gen` for an alternative generator-based syntax

**Signature**

```ts
declare const Do: Result<{}, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1468)

Since v4.0.0