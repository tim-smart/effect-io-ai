Package: `effect`<br />
Module: `Effect`<br />

## Effect.isSuccess

Returns whether an effect completes successfully.

Returns `false` for failures in the error channel, but defects still fail the
effect.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const ok = yield* Effect.isSuccess(Effect.succeed("done"))
  const failed = yield* Effect.isSuccess(Effect.fail("Uh oh"))
  yield* Console.log(`ok: ${ok}`)
  yield* Console.log(`failed: ${failed}`)
})

Effect.runPromise(program)
// Output:
// ok: true
// failed: false
```

**Signature**

```ts
declare const isSuccess: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5510)

Since v2.0.0