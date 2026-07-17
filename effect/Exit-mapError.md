Package: `effect`<br />
Module: `Exit`<br />

## Exit.mapError

Transforms the typed error of a failed Exit using the given function.

**When to use**

Use to remap typed errors while preserving the Exit structure

**Details**

Successes pass through unchanged.

Allocates a new Exit if the error is transformed.

**Gotchas**

Only transforms typed errors (Fail reasons). If the Cause contains only
defects or interruptions, the failure passes through unchanged.

**Example** (Mapping over an error)

```ts
import { Data, Exit } from "effect"

class ExitError extends Data.TaggedError("ExitError")<{ readonly input: string }> {}

const exit = Exit.fail("bad input")
const mapped = Exit.mapError(exit, (e) => new ExitError({ input: e }))
console.log(Exit.isFailure(mapped)) // true
```

**See**

- `map` to transform the success value
- `mapBoth` to transform both success and error

**Signature**

```ts
declare const mapError: { <E, E2>(f: (a: NoInfer<E>) => E2): <A>(self: Exit<A, E>) => Exit<A, E2>; <A, E, E2>(self: Exit<A, E>, f: (a: NoInfer<E>) => E2): Exit<A, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L871)

Since v2.0.0