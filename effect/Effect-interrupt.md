Package: `effect`<br />
Module: `Effect`<br />

## Effect.interrupt

Represents an effect that interrupts the current fiber.

**Details**

This effect models the explicit interruption of the fiber in which it runs.
When executed, it causes the fiber to stop its operation immediately,
capturing the interruption details such as the fiber's ID and its start time.
The resulting interruption can be observed in the `Exit` type if the effect
is run with functions like `runPromiseExit`.

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

Effect.runPromiseExit(program).then(console.log)
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
declare const interrupt: Effect<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4881)

Since v2.0.0