Package: `effect`<br />
Module: `Effect`<br />

## Effect.Do

An `Effect` containing an empty record `{}`, used as the starting point for
do notation chains.

**Example** (Starting do notation)

```ts
import { Effect, pipe } from "effect"

const program = pipe(
  Effect.Do,
  Effect.bind("x", () => Effect.succeed(2)),
  Effect.bind("y", ({ x }) => Effect.succeed(x + 1)),
  Effect.let("sum", ({ x, y }) => x + y)
)
```

**Signature**

```ts
declare const Do: Effect<{}, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1315)

Since v2.0.0