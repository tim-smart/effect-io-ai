Package: `effect`<br />
Module: `Console`<br />

## Console.error

Outputs an error message to the console.

This function logs messages at the error level, typically displayed
in red or with an error icon in most console implementations.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.error("Something went wrong!")
  yield* Console.error("Error details:", {
    code: 500,
    message: "Internal Server Error"
  })
})
```

**Signature**

```ts
declare const error: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L364)

Since v2.0.0