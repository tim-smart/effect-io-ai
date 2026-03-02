Package: `effect`<br />
Module: `Array`<br />

## Array.separate

Separates an iterable of `Result`s into two arrays: failures and successes.

- Equivalent to `partitionMap(identity)`.

**Example** (Separating Results)

```ts
import { Array, Result } from "effect"

const [failures, successes] = Array.separate([
  Result.succeed(1), Result.fail("error"), Result.succeed(2)
])
console.log(failures) // ["error"]
console.log(successes) // [1, 2]
```

**See**

- `getFailures` — extract only failures
- `getSuccesses` — extract only successes

**Signature**

```ts
declare const separate: <T extends Iterable<Result.Result<any, any>>>(self: T) => [failures: Array<Result.Result.Failure<ReadonlyArray.Infer<T>>>, successes: Array<Result.Result.Success<ReadonlyArray.Infer<T>>>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3382)

Since v2.0.0