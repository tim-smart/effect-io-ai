Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterValue

Extracts the success value from an Exit for use in filter pipelines.

- Use with Filter-based composition when you want the raw value, not the Success wrapper
- Returns the value `A` if the Exit succeeded, or a `Filter.fail` wrapping the Failure otherwise

**Example** (Filtering for the value)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.succeed(42)
const result = Exit.filterValue(exit)
// If exit is a success, result is 42
// If exit is a failure, result is a Filter.fail marker
```

**See**

- `filterSuccess` to get the full Success object
- `getSuccess` to get the value as an Option instead

**Signature**

```ts
declare const filterValue: <A, E>(self: Exit<A, E>) => Result.Result<A, Failure<never, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L551)

Since v4.0.0