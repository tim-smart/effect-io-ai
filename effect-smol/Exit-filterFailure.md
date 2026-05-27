Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterFailure

Extracts the Failure variant from an Exit as a Result.

**When to use**

Use when composing Exit checks with `Filter` or other `Result`-based
filtering APIs.

**Details**

Returns `Result.succeed(failure)` when the Exit is a Failure, or
`Result.fail(success)` with the original Success otherwise.

**Gotchas**

This is not an `Option` accessor or an Effect failure. A failed extraction is
represented as data in the `Result` failure channel.

**Example** (Filtering for failure)

```ts
import { Exit, Result } from "effect"

const exit = Exit.fail("err")
const result = Exit.filterFailure(exit)

console.log(Result.isSuccess(result)) // true
```

**See**

- `filterSuccess` for the inverse
- `filterCause` to extract the Cause directly

**Signature**

```ts
declare const filterFailure: <A, E>(self: Exit<A, E>) => Result.Result<Failure<never, E>, Success<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L686)

Since v4.0.0