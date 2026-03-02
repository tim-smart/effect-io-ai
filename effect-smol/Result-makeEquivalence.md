Package: `effect`<br />
Module: `Result`<br />

## Result.makeEquivalence

Creates an `Equivalence` for comparing two `Result` values.

- Two `Success` values are equal when the `success` equivalence says so
- Two `Failure` values are equal when the `failure` equivalence says so
- A `Success` and a `Failure` are never equal

**Example** (Comparing Results for equality)

```ts
import { Equivalence, Result } from "effect"

const eq = Result.makeEquivalence(
  Equivalence.strictEqual<number>(),
  Equivalence.strictEqual<string>()
)

console.log(eq(Result.succeed(1), Result.succeed(1)))
// Output: true

console.log(eq(Result.succeed(1), Result.fail("x")))
// Output: false
```

**Signature**

```ts
declare const makeEquivalence: <A, E>(success: Equivalence.Equivalence<A>, failure: Equivalence.Equivalence<E>) => Equivalence.Equivalence<Result<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L682)

Since v4.0.0