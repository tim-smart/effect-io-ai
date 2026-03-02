Package: `effect`<br />
Module: `Exit`<br />

## Exit.findDefect

Extracts the first defect from a failed Exit for use in filter pipelines.

- Use when you need to inspect unexpected errors
- Returns the defect value if one exists, or `Filter.fail` wrapping the original Exit if the Exit has no defects

Only finds the first Die reason. If the Cause has multiple defects, the rest
are ignored.

**Example** (Finding the first defect)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.die("boom")
const result = Exit.findDefect(exit)
// result is "boom"

const typed = Exit.fail("err")
const noDefect = Exit.findDefect(typed)
// noDefect is a Filter.fail marker
```

**See**

- `findError` to find typed errors instead
- `hasDies` to check for defects without extracting them

**Signature**

```ts
declare const findDefect: <A, E>(input: Exit<A, E>) => Result.Result<unknown, Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L665)

Since v4.0.0