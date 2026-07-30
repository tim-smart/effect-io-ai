Package: `effect`<br />
Module: `Effect`<br />

## Effect.orDieWith

Converts an effect's failure into a fiber termination with a custom error.

**Details**

The `orDieWith` function behaves like `orDie`, but it allows you to provide a mapping
function to transform the error before terminating the fiber. This is useful for cases where
you want to include a more detailed or user-friendly error when the failure is propagated
as a defect.

**When to Use**

Use `orDieWith` when failures should terminate the fiber as defects, and you want to customize
the error for clarity or debugging purposes.

**Example** (Customizing Defect)

```ts
import { Effect } from "effect"

const divide = (a: number, b: number) =>
  b === 0
    ? Effect.fail(new Error("Cannot divide by zero"))
    : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.orDieWith(
  divide(1, 0),
  (error) => new Error(`defect: ${error.message}`)
)

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) Error: defect: Cannot divide by zero
//   ...stack trace...
```

**See**

- `orDie` if you don't need to customize the error.

**Signature**

```ts
declare const orDieWith: { <E>(f: (error: E) => unknown): <A, R>(self: Effect<A, E, R>) => Effect<A, never, R>; <A, E, R>(self: Effect<A, E, R>, f: (error: E) => unknown): Effect<A, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11310)

Since v2.0.0