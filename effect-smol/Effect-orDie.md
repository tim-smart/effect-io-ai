Package: `effect`<br />
Module: `Effect`<br />

## Effect.orDie

Converts typed failures from the error channel into defects, removing the
error type from the returned effect.

**When to Use**

Use `orDie` when a typed failure represents an unrecoverable bug or invalid
state and should not be handled as a recoverable error.

**See**

- `mapError` to transform the error before converting it into a defect with `orDie`.

**Example** (Propagating an Error as a Defect)

```ts
import { Data, Effect } from "effect"

class DivideByZeroError extends Data.TaggedError("DivideByZeroError")<{}> {}

const divide = (a: number, b: number) =>
  b === 0
    ? Effect.fail(new DivideByZeroError())
    : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.orDie(divide(1, 0))

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) DivideByZeroError
//   ...stack trace...
```

**Signature**

```ts
declare const orDie: <A, E, R>(self: Effect<A, E, R>) => Effect<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3321)

Since v2.0.0