Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterCause

Extracts the Cause from a failed Exit as a Result.

**When to use**

Use when composing Exit checks with `Filter` or other `Result`-based
filtering APIs and you want the raw Cause rather than the Failure wrapper.

**Details**

Returns `Result.succeed(cause)` when the Exit is a Failure, or
`Result.fail(success)` with the original Success otherwise.

**Gotchas**

This is not an `Option` accessor or an Effect failure. A failed extraction is
represented as data in the `Result` failure channel.

**Example** (Filtering for the cause)

```ts
import { Exit, Result } from "effect"

const exit = Exit.fail("err")
const result = Exit.filterCause(exit)

console.log(Result.isSuccess(result)) // true
```

**See**

- `filterFailure` to get the full Failure object
- `getCause` to get the Cause as an Option instead

**Signature**

```ts
declare const filterCause: <A, E>(self: Exit<A, E>) => Result.Result<Cause.Cause<E>, Success<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L724)

Since v4.0.0