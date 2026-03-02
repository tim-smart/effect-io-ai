Package: `effect`<br />
Module: `Console`<br />

## Console.info

Outputs an informational message to the console.

This function logs messages at the info level, typically displayed
with an info icon in most console implementations.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.info("Application started successfully")
  yield* Console.info("Server configuration:", {
    port: 3000,
    env: "development"
  })
})
```

**Signature**

```ts
declare const info: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L437)

Since v2.0.0