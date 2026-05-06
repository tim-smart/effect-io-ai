Package: `effect`<br />
Module: `Effect`<br />

## Effect.logWithLevel

Creates a logger function that logs at the specified level.

If no level is provided, the logger uses the fiber's current log level and
extracts any `Cause` values from the message list.

**Example**

```ts
import { Effect } from "effect"

const logWarn = Effect.logWithLevel("Warn")

const program = Effect.gen(function*() {
  yield* logWarn("Cache miss", { key: "user:1" })
})
```

**Signature**

```ts
declare const logWithLevel: (level?: Severity) => (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13012)

Since v2.0.0