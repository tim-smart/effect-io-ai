Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.logLines

Returns an array of all items that have been logged by the program using
`Console.log` thus far.

**When to use**

Use to assert on captured `Console.log` output from a program provided with
`TestConsole.layer`.

**Example** (Reading captured log lines)

```ts
import { Console, Effect } from "effect"
import { TestConsole } from "effect/testing"

const program = Effect.gen(function*() {
  yield* Console.log("First message")
  yield* Console.log("Second message", { key: "value" })
  yield* Console.log("Third message", 42, true)

  const logs = yield* TestConsole.logLines

  console.log(logs)
  // [
  //   ["First message"],
  //   ["Second message", { key: "value" }],
  //   ["Third message", 42, true]
  // ]
}).pipe(Effect.provide(TestConsole.layer))
```

**See**

- `errorLines` for reading captured `Console.error` output
- `layer` for capturing console calls during a test

**Signature**

```ts
declare const logLines: Effect.Effect<ReadonlyArray<unknown>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L328)

Since v4.0.0