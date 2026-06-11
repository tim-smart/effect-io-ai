Package: `effect`<br />
Module: `Array`<br />

## Array.getSuccesses

Extracts all success values from an iterable of `Result`s, discarding
failures.

**When to use**

Use when you can drop the failure channel and only need the success
payloads, not the original result wrappers.

**Example** (Extracting successes)

```ts
import { Array, Result } from "effect"

console.log(Array.getSuccesses([Result.succeed(1), Result.fail("err"), Result.succeed(2)]))
// [1, 2]
```

**See**

- `getFailures` — extract failure values
- `separate` — split into failures and successes

**Signature**

```ts
declare const getSuccesses: <T extends Iterable<Result.Result<any, any>>>(self: T) => Array<Result.Result.Success<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3670)

Since v4.0.0