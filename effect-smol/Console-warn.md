Package: `effect`<br />
Module: `Console`<br />

## Console.warn

Outputs a warning-level message to the console, typically displayed with warning styling by the active console implementation.

**Example** (Writing warning messages)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.warn("This feature is deprecated")
  yield* Console.warn("Performance warning:", {
    slowQuery: "SELECT * FROM large_table"
  })
})
```

**Signature**

```ts
declare const warn: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L593)

Since v2.0.0