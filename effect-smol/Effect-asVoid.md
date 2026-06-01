Package: `effect`<br />
Module: `Effect`<br />

## Effect.asVoid

Maps the success value of an `Effect` to `void`, preserving failures.

**Example** (Discarding success values)

```ts
import { Effect } from "effect"

const program = Effect.asVoid(Effect.succeed(42))

Effect.runPromise(program).then(console.log)
// undefined (void)
```

**Signature**

```ts
declare const asVoid: <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2450)

Since v2.0.0