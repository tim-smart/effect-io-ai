Package: `effect`<br />
Module: `Result`<br />

## Result.let

Adds a named field to the do-notation accumulator by computing a pure
(non-Result) value from the current accumulated object.

- Use `bind` when the computation returns a `Result`
- The field name must not collide with existing keys

**Example** (Adding a computed field)

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

- `Do` to start the do-notation chain
- `bind` for Result-producing fields

**Signature**

```ts
declare const let: { <N extends string, R extends object, B>(name: Exclude<N, keyof R>, f: (r: NoInfer<R>) => B): <L>(self: Result<R, L>) => Result<{ [K in N | keyof R]: K extends keyof R ? R[K] : B; }, L>; <R extends object, L, N extends string, B>(self: Result<R, L>, name: Exclude<N, keyof R>, f: (r: NoInfer<R>) => B): Result<{ [K in N | keyof R]: K extends keyof R ? R[K] : B; }, L>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1572)

Since v4.0.0