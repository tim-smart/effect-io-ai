# orDieWith

Converts an effect's failure into a fiber termination with a custom error.

**When to Use**

Use `orDieWith` when failures should terminate the fiber as defects, and you want to customize
the error for clarity or debugging purposes.

**Details**

The `orDieWith` function behaves like {@link orDie}, but it allows you to provide a mapping
function to transform the error before terminating the fiber. This is useful for cases where
you want to include a more detailed or user-friendly error when the failure is propagated
as a defect.

To import and use `orDieWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.orDieWith
undefined

**Example**

```ts
// Title: Customizing Defect
import { Effect } from "effect"

const divide = (a: number, b: number) =>
  b === 0 ? Effect.fail(new Error("Cannot divide by zero")) : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.orDieWith(divide(1, 0), (error) => new Error(`defect: ${error.message}`))

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) Error: defect: Cannot divide by zero
//   ...stack trace...
```

**Signature**

```ts
export declare const orDieWith: {
  <E>(f: (error: E) => unknown): <A, R>(self: Effect<A, E, R>) => Effect<A, never, R>
  <A, E, R>(self: Effect<A, E, R>, f: (error: E) => unknown): Effect<A, never, R>
}
```
