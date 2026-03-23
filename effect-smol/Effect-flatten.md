Package: `effect`<br />
Module: `Effect`<br />

## Effect.flatten

Flattens an `Effect` that produces another `Effect` into a single effect.

**Example**

```ts
import { Console, Effect } from "effect"

const nested = Effect.succeed(Effect.succeed("hello"))

const program = Effect.gen(function*() {
  const value = yield* Effect.flatten(nested)
  yield* Console.log(value)
  // Output: hello
})
```

**Signature**

```ts
declare const flatten: <A, E, R, E2, R2>(self: Effect<Effect<A, E, R>, E2, R2>) => Effect<A, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2083)

Since v2.0.0