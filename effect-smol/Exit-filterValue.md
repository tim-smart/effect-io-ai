Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterValue

Extracts the success value from an Exit as a Result.

**When to use**

Use when composing Exit checks with `Filter` or other `Result`-based
filtering APIs and you want the raw success value rather than the Success
wrapper.

**Details**

Returns `Result.succeed(value)` when the Exit is a Success, or
`Result.fail(failure)` with the original Failure otherwise.

**Gotchas**

This is not an `Option` accessor or an Effect failure. A failed extraction is
represented as data in the `Result` failure channel.

**Example** (Filtering for the value)

```ts
import { Exit, Result } from "effect"

const exit = Exit.succeed(42)
const result = Exit.filterValue(exit)

console.log(Result.isSuccess(result) && result.success) // 42
```

**See**

- `filterSuccess` to get the full Success object
- `getSuccess` to get the value as an Option instead

**Signature**

```ts
declare const filterValue: <A, E>(self: Exit<A, E>) => Result.Result<A, Failure<never, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L649)

Since v4.0.0