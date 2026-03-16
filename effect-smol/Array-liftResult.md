Package: `effect`<br />
Module: `Array`<br />

## Array.liftResult

Lifts a `Result`-returning function into one that returns an array: failures
produce `[]`, successes produce `[value]`.

**Example** (Lifting a Result function)

```ts
import { Array, Result } from "effect"

const parseNumber = (s: string): Result.Result<number, Error> =>
  isNaN(Number(s))
    ? Result.fail(new Error("Not a number"))
    : Result.succeed(Number(s))

const liftedParseNumber = Array.liftResult(parseNumber)
console.log(liftedParseNumber("42")) // [42]
console.log(liftedParseNumber("not a number")) // []
```

**See**

- `liftOption` — lift an Option-returning function
- `liftPredicate` — lift a boolean predicate

**Signature**

```ts
declare const liftResult: <A extends Array<unknown>, E, B>(f: (...a: A) => Result.Result<B, E>) => (...a: A) => Array<B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3599)

Since v2.0.0