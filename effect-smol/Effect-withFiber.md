Package: `effect`<br />
Module: `Effect`<br />

## Effect.withFiber

Provides access to the current fiber within an effect computation.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.withFiber((fiber) =>
  Effect.succeed(`Fiber ID: ${fiber.id}`)
)

Effect.runPromise(program).then(console.log)
// Output: Fiber ID: 1
```

**Signature**

```ts
declare const withFiber: <A, E = never, R = never>(evaluate: (fiber: Fiber<unknown, unknown>) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1874)

Since v2.0.0