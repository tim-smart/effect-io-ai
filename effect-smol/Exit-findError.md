Package: `effect`<br />
Module: `Exit`<br />

## Exit.findError

Extracts the first typed error value from a failed Exit as a Result.

**When to use**

Use when you need the first typed error from an `Exit` as a `Result` for
`Filter` or other `Result`-based filtering APIs.

**Details**

Returns `Result.succeed(error)` when the Cause contains a Fail reason, or
`Result.fail(exit)` with the original Exit otherwise.

**Gotchas**

Only finds the first Fail reason. If the Cause has multiple errors, the rest
are ignored.

**Example** (Finding the first typed error)

```ts
import { Exit, Result } from "effect"

const exit = Exit.fail("not found")
const result = Exit.findError(exit)
console.log(Result.isSuccess(result) && result.success) // "not found"

const defect = Exit.die(new Error("bug"))
const noError = Exit.findError(defect)
console.log(Result.isFailure(noError)) // true
```

**See**

- `findErrorOption` to get the error as an Option instead
- `findDefect` to find defects instead

**Signature**

```ts
declare const findError: <A, E>(input: Exit<A, E>) => Result.Result<E, Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L713)

Since v4.0.0