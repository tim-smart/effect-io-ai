Package: `effect`<br />
Module: `Array`<br />

## Array.getFailures

Extracts all failure values from an iterable of `Result`s, discarding
successes.

**When to use**

Use to collect only failure values from `Result` values while discarding
successes.

**Example** (Extracting failures)

```ts
import { Array, Result } from "effect"

console.log(Array.getFailures([Result.succeed(1), Result.fail("err"), Result.succeed(2)]))
// ["err"]
```

**See**

- `getSuccesses` — extract success values
- `separate` — split into failures and successes

**Signature**

```ts
declare const getFailures: <T extends Iterable<Result.Result<any, any>>>(self: T) => Array<Result.Result.Failure<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3683)

Since v4.0.0