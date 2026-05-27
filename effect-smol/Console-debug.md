Package: `effect`<br />
Module: `Console`<br />

## Console.debug

Writes a debug message through the current `Console` service.

**Details**

The arguments are passed to the service's `debug` method when the returned
Effect is executed. Any filtering behavior depends on the active console
implementation.

**Example** (Writing debug messages)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L296)

Since v2.0.0