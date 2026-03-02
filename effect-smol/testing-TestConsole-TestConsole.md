Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole

A `TestConsole` provides a testable implementation of the Console interface.
It captures all console output for testing purposes while maintaining full
compatibility with the standard Console API.

This interface extends the standard Console interface and adds methods to
retrieve logged messages for verification in tests.

**Example**

```ts
import { Console, Effect } from "effect"
import * as TestConsole from "effect/testing/TestConsole"

const program = Effect.gen(function*() {
  yield* Console.log("Hello, World!")
  yield* Console.error("An error occurred")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log(logs) // [["Hello, World!"]]
  console.log(errors) // [["An error occurred"]]
}).pipe(Effect.provide(TestConsole.layer))
```

**Signature**

```ts
export interface TestConsole extends Console.Console {
  /**
   * Returns an array of all items that have been logged by the program using
   * `Console.log` thus far.
   */
  readonly logLines: Effect.Effect<ReadonlyArray<unknown>>
  /**
   * Returns an array of all items that have been logged by the program using
   * `Console.error` thus far.
   */
  readonly errorLines: Effect.Effect<ReadonlyArray<unknown>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L37)

Since v4.0.0