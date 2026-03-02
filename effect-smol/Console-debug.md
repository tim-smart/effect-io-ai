Package: `effect`<br />
Module: `Console`<br />

## Console.debug

Outputs a debug message to the console.

This function logs messages at the debug level, which may be filtered
out in production environments.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.debug("Debug info:", { userId: 123, action: "login" })
  yield* Console.debug("Processing step", 1, "of", 5)
})
```

**Signature**

```ts
declare const debug: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L282)

Since v2.0.0