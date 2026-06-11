Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.errorLines

Returns an array of all items that have been logged by the program using
`Console.error` thus far.

**When to use**

Use to assert on captured `Console.error` output from a program provided
with `TestConsole.layer`.

**Example** (Reading captured error lines)

```ts
import { Console, Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = Effect.gen(function*() {
  yield* Console.error("Error message")
  yield* Console.error("Another error", new Error("Something went wrong"))

  const errors = yield* TestConsole.errorLines

  console.log(errors)
  // [
  //   ["Error message"],
  //   ["Another error", Error: Something went wrong]
  // ]
}).pipe(Effect.provide(TestConsole.layer))
```

**See**

- `logLines` for reading captured `Console.log` output
- `layer` for capturing console calls during a test

**Signature**

```ts
declare const errorLines: Effect.Effect<ReadonlyArray<unknown>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L367)

Since v4.0.0