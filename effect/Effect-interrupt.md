# interrupt

Represents an effect that interrupts the current fiber.

**Details**

This effect models the explicit interruption of the fiber in which it runs.
When executed, it causes the fiber to stop its operation immediately,
capturing the interruption details such as the fiber's ID and its start time.
The resulting interruption can be observed in the `Exit` type if the effect
is run with functions like {@link runPromiseExit}.

To import and use `interrupt` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.interrupt
```

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  console.log("start")
  yield* Effect.sleep("2 seconds")
  yield* Effect.interrupt
  console.log("done")
  return "some result"
})

// Effect.runPromiseExit(program).then(console.log)
// Output:
// start
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Interrupt',
//     fiberId: {
//       _id: 'FiberId',
//       _tag: 'Runtime',
//       id: 0,
//       startTimeMillis: ...
//     }
//   }
// }
```

**Signature**

```ts
export declare const interrupt: Effect<never, never, never>
```
