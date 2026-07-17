Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole

A `TestConsole` provides a testable implementation of the Console interface.
It captures all console output for testing purposes while maintaining full
compatibility with the standard Console API.

**When to use**

Use to provide a console implementation that records calls for assertions in
tests.

**Details**

This interface extends the standard Console interface and adds methods to
retrieve logged messages for verification in tests.

**Example** (Capturing console output in tests)

```ts
import { Console, Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = Effect.gen(function*() {
  yield* Console.log("Hello, World!")
  yield* Console.error("An error occurred")

  const logs = yield* TestConsole.logLines
  const errors = yield* TestConsole.errorLines

  console.log(logs) // [["Hello, World!"]]
  console.log(errors) // [["An error occurred"]]
}).pipe(Effect.provide(TestConsole.layer))
```

**See**

- `layer` for providing `TestConsole` to an effect
- `logLines` for reading captured `Console.log` calls
- `errorLines` for reading captured `Console.error` calls

**Signature**

```ts
export interface TestConsole extends Console.Console {
  /**
   * Returns an array of all items that have been logged by the program using
   * `Console.log` thus far.
   *
   * **When to use**
   *
   * Use to inspect captured `Console.log` calls through a `TestConsole`
   * instance.
   */
  readonly logLines: Effect.Effect<ReadonlyArray<unknown>>
  /**
   * Returns an array of all items that have been logged by the program using
   * `Console.error` thus far.
   *
   * **When to use**
   *
   * Use to inspect captured `Console.error` calls through a `TestConsole`
   * instance.
   */
  readonly errorLines: Effect.Effect<ReadonlyArray<unknown>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestConsole.ts#L57)

Since v4.0.0