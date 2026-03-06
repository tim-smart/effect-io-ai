Package: `effect`<br />
Module: `Effect`<br />

## Effect.eventually

Retries an effect until it succeeds, discarding failures.

Yields between attempts so other fibers can run.

**Example**

```ts
import { Console, Effect } from "effect"

let attempts = 0

const flaky = Effect.gen(function*() {
  attempts++
  yield* Console.log(`Attempt ${attempts}`)
  if (attempts < 3) {
    return yield* Effect.fail("Not ready")
  }
  return "Ready"
})

const program = Effect.eventually(flaky)

Effect.runPromise(program).then(console.log)
// Output:
// Attempt 1
// Attempt 2
// Attempt 3
// Ready
```

**Signature**

```ts
declare const eventually: <A, E, R>(self: Effect<A, E, R>) => Effect<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3884)

Since v2.0.0