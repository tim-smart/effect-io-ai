Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterFailure

Extracts the Failure variant from an Exit for use in filter pipelines.

- Use with Filter-based composition
- Returns the `Failure<never, E>` if the Exit failed, or a `Filter.fail` wrapping the Success otherwise

**Example** (Filtering for failure)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.fail("err")
const result = Exit.filterFailure(exit)
// If exit is a failure, result is the Failure object
// If exit is a success, result is a Filter.fail marker
```

**See**

- `filterSuccess` for the inverse
- `filterCause` to extract the Cause directly

**Signature**

```ts
declare const filterFailure: <A, E>(self: Exit<A, E>) => Result.Result<Failure<never, E>, Success<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L576)

Since v4.0.0