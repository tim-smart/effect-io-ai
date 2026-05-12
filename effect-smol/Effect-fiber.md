Package: `effect`<br />
Module: `Effect`<br />

## Effect.fiber

Access the fiber currently executing the effect.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.fiber
  yield* Console.log(`Fiber id: ${fiber.id}`)
})
```

**Signature**

```ts
declare const fiber: Effect<Fiber<unknown, unknown>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8215)

Since v4.0.0