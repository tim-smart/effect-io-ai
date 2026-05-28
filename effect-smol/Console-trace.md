Package: `effect`<br />
Module: `Console`<br />

## Console.trace

Writes the current stack trace to the console to show how the current point in
the code was reached.

**Example** (Writing stack traces)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.trace("Debug trace point")
  yield* Console.trace("Function call:", { functionName: "processData" })
})
```

**Signature**

```ts
declare const trace: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L591)

Since v2.0.0