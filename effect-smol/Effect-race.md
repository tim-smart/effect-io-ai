Package: `effect`<br />
Module: `Effect`<br />

## Effect.race

Races two effects and returns the first successful result.

If one effect succeeds, the other is interrupted and `onWinner` can observe the
winning fiber. If both fail, the race fails.

**Example**

```ts
import { Console, Duration, Effect } from "effect"

const fastFail = Effect.delay(Effect.fail("fast-fail"), Duration.millis(10))
const slowSuccess = Effect.delay(Effect.succeed("slow-success"), Duration.millis(50))

const program = Effect.gen(function*() {
  const result = yield* Effect.race(fastFail, slowSuccess)
  yield* Console.log(`winner: ${result}`)
})

Effect.runPromise(program)
// Output: winner: slow-success
```

**Signature**

```ts
declare const race: { <A2, E2, R2>(that: Effect<A2, E2, R2>, options?: { readonly onWinner?: (options: { readonly fiber: Fiber<any, any>; readonly index: number; readonly parentFiber: Fiber<any, any>; }) => void; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>, options?: { readonly onWinner?: (options: { readonly fiber: Fiber<any, any>; readonly index: number; readonly parentFiber: Fiber<any, any>; }) => void; }): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4727)

Since v2.0.0