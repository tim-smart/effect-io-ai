Package: `effect`<br />
Module: `Effect`<br />

## Effect.logWarning

Logs one or more messages at the WARNING level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.logWarning("API rate limit approaching")
  yield* Effect.logWarning("Retries remaining:", 2, "Operation:", "fetchData")

  // Useful for non-critical issues
  const deprecated = true
  if (deprecated) {
    yield* Effect.logWarning("Using deprecated API endpoint")
  }
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=WARN message="API rate limit approaching"
// timestamp=2023-... level=WARN message="Retries remaining: 2 Operation: fetchData"
// timestamp=2023-... level=WARN message="Using deprecated API endpoint"
```

**Signature**

```ts
declare const logWarning: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13065)

Since v2.0.0