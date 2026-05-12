Package: `effect`<br />
Module: `Result`<br />

## Result.bind

Adds a named field to the do-notation accumulator by running a `Result`-producing
function that receives the current accumulated object.

- Short-circuits on the first `Failure`
- The field name must not collide with existing keys
- Use `let` for pure (non-Result) computed fields

**Example** (Binding Result values)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.Do,
  Result.bind("x", () => Result.succeed(2)),
  Result.bind("y", ({ x }) => Result.succeed(x + 3))
)
console.log(result)
// Output: { _tag: "Success", success: { x: 2, y: 5 }, ... }
```

**See**

- `Do` to start the do-notation chain
- `let` for pure computed fields
- `bindTo` to wrap an initial Result into a named field

**Signature**

```ts
declare const bind: { <N extends string, A extends object, B, L2>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Result<B, L2>): <L1>(self: Result<A, L1>) => Result<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, L1 | L2>; <A extends object, L1, N extends string, B, L2>(self: Result<A, L1>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Result<B, L2>): Result<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, L1 | L2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1499)

Since v4.0.0