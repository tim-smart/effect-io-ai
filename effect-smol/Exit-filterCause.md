Package: `effect`<br />
Module: `Exit`<br />

## Exit.filterCause

Extracts the Cause from a failed Exit for use in filter pipelines.

- Use with Filter-based composition when you want the raw Cause, not the Failure wrapper
- Returns the `Cause<E>` if the Exit failed, or a `Filter.fail` wrapping the Success otherwise

**Example** (Filtering for the cause)

```ts
import { Exit, Filter } from "effect"

const exit = Exit.fail("err")
const result = Exit.filterCause(exit)
// If exit is a failure, result is the Cause
// If exit is a success, result is a Filter.fail marker
```

**See**

- `filterFailure` to get the full Failure object
- `getCause` to get the Cause as an Option instead

**Signature**

```ts
declare const filterCause: <A, E>(self: Exit<A, E>) => Result.Result<Cause.Cause<E>, Success<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L602)

Since v4.0.0