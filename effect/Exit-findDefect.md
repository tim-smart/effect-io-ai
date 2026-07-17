Package: `effect`<br />
Module: `Exit`<br />

## Exit.findDefect

Extracts the first defect from a failed Exit as a Result.

**When to use**

Use when you need the first defect from an `Exit` as a `Result` for
`Filter` or other `Result`-based filtering APIs.

**Details**

Returns `Result.succeed(defect)` when the Cause contains a Die reason, or
`Result.fail(exit)` with the original Exit otherwise.

**Gotchas**

Only finds the first Die reason. If the Cause has multiple defects, the rest
are ignored.

**Example** (Finding the first defect)

```ts
import { Exit, Result } from "effect"

const exit = Exit.die("boom")
const result = Exit.findDefect(exit)
console.log(Result.isSuccess(result) && result.success) // "boom"

const typed = Exit.fail("err")
const noDefect = Exit.findDefect(typed)
console.log(Result.isFailure(noDefect)) // true
```

**See**

- `findError` to find typed errors instead
- `hasDies` to check for defects without extracting them

**Signature**

```ts
declare const findDefect: <A, E>(input: Exit<A, E>) => Result.Result<unknown, Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L753)

Since v4.0.0