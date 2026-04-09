Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSyncWith

Executes an effect synchronously with provided services.

**Example**

```ts
import { Effect, Context } from "effect"

interface MathService {
  add: (a: number, b: number) => number
}

const MathService = Context.Service<MathService>("MathService")

const context = Context.make(MathService, {
  add: (a, b) => a + b
})

const program = Effect.gen(function*() {
  const math = yield* MathService
  return math.add(2, 3)
})

const result = Effect.runSyncWith(context)(program)
console.log(result) // 5
```

**Signature**

```ts
declare const runSyncWith: <R>(context: Context.Context<R>) => <A, E>(effect: Effect<A, E, R>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8682)

Since v4.0.0