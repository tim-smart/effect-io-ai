Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterSuccess

Extracts the Success variant from an Exit as a Result.

**When to use**

Use when composing Exit checks with `Filter` or other `Result`-based
filtering APIs and you want the full Success wrapper.

**Details**

Returns `Result.succeed(success)` when the Exit is a Success, or
`Result.fail(failure)` with the original Failure otherwise.

**Gotchas**

This is not an `Option` accessor or an Effect failure. A failed extraction is
represented as data in the `Result` failure channel.

**Example** (Filtering for success)

```ts
import { Exit, Result } from "effect"

const exit = Exit.succeed(42)
const result = Exit.filterSuccess(exit)

console.log(Result.isSuccess(result)) // true
```

**See**

- `filterFailure` for the inverse
- `filterValue` to extract the raw value instead of the Success object

**Signature**

```ts
declare const filterSuccess: <A, E>(self: Exit<A, E>) => Result.Result<Success<A>, Failure<never, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L558)

Since v4.0.0