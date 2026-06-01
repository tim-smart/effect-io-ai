Package: `effect`<br />
Module: `Effect`<br />

## Effect.isFailure

Determines whether an effect fails.

**Details**

Defects are not converted; if the effect dies, the resulting effect dies too.

**Example** (Checking whether an effect fails)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const failed = yield* Effect.isFailure(Effect.fail("Uh oh!"))
  yield* Console.log(failed)
})

Effect.runPromise(program)
// Output: true
```

**Signature**

```ts
declare const isFailure: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5700)

Since v2.0.0