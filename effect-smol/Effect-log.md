Package: `effect`<br />
Module: `Effect`<br />

## Effect.log

Logs one or more messages using the default log level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("Starting computation")
  const result = 2 + 2
  yield* Effect.log("Result:", result)
  yield* Effect.log("Multiple", "values", "can", "be", "logged")
  return result
})

Effect.runPromise(program).then(console.log)
// Output:
// timestamp=2023-... level=INFO message="Starting computation"
// timestamp=2023-... level=INFO message="Result: 4"
// timestamp=2023-... level=INFO message="Multiple values can be logged"
// 4
```

**Signature**

```ts
declare const log: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13041)

Since v2.0.0