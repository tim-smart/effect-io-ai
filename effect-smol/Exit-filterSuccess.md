Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterSuccess

Extracts the Success variant from an Exit for use in filter pipelines.

- Use with Filter-based composition
- Returns the `Success<A>` if the Exit succeeded, or a `Filter.fail` wrapping the Failure otherwise

**Example** (Filtering for success)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.succeed(42)
const result = Exit.filterSuccess(exit)
// If exit is a success, result is the Success object
// If exit is a failure, result is a Filter.fail marker
```

**See**

- `filterFailure` for the inverse
- `filterValue` to extract the raw value instead of the Success object

**Signature**

```ts
declare const filterSuccess: <A, E>(self: Exit<A, E>) => Result.Result<Success<A>, Failure<never, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L524)

Since v4.0.0