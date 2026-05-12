Package: `effect`<br />
Module: `Effect`<br />

## Effect.interrupt

Returns an effect that is immediately interrupted.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  return yield* Effect.interrupt
  yield* Effect.succeed("This won't execute and is unreachable")
})

Effect.runPromise(program).catch(console.error)
// Throws: InterruptedException
```

**Signature**

```ts
declare const interrupt: Effect<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6827)

Since v2.0.0