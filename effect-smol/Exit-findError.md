Package: `effect`<br />
Module: `Exit`<br />

## Exit.findError

Extracts the first typed error value from a failed Exit for use in filter
pipelines.

- Use when you need just the first `E` from the Cause
- Returns the error `E` if one exists, or `Filter.fail` wrapping the original Exit if the Exit has no typed errors

Only finds the first Fail reason. If the Cause has multiple errors, the rest
are ignored.

**Example** (Finding the first typed error)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.fail("not found")
const result = Exit.findError(exit)
// result is "not found"

const defect = Exit.die(new Error("bug"))
const noError = Exit.findError(defect)
// noError is a Filter.fail marker
```

**See**

- `findErrorOption` to get the error as an Option instead
- `findDefect` to find defects instead

**Signature**

```ts
declare const findError: <A, E>(input: Exit<A, E>) => Result.Result<E, Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L634)

Since v4.0.0