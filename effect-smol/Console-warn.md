Package: `effect`<br />
Module: `Console`<br />

## Console.warn

Outputs a warning message to the console.

This function logs messages at the warning level, typically displayed
in yellow or with a warning icon in most console implementations.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L619)

Since v2.0.0