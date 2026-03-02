Package: `effect`<br />
Module: `Console`<br />

## Console.trace

Outputs a stack trace to the console.

This function logs the current stack trace, which is useful for debugging
to understand how the current point in the code was reached.

**Example**

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