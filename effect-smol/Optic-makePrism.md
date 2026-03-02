Package: `effect`<br />
Module: `Optic`<br />

## Optic.makePrism

Creates a `Prism` from a fallible getter and an infallible setter.

When to use:
- Reading can fail (the part may not exist in `S`), but building `S`
  from `A` always succeeds.

Behavior:
- Does not mutate inputs.
- `getResult` should return `Result.fail(message)` on mismatch.

**Example** (parsing a string to a number)

```ts
import { Optic, Result } from "effect"

const numeric = Optic.makePrism<string, number>(
  (s) => {
    const n = Number(s)
    return Number.isNaN(n) ? Result.fail("not a number") : Result.succeed(n)
  },
  String
)

console.log(Result.isSuccess(numeric.getResult("42")))
// Output: true

console.log(numeric.set(42))
// Output: "42"
```

**See**

- `Prism` — the type this function returns
- `fromChecks` — build from `Schema` checks instead

**Signature**

```ts
declare const makePrism: <S, A>(getResult: (s: S) => Result.Result<A, string>, set: (a: A) => S) => Prism<S, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L349)

Since v4.0.0