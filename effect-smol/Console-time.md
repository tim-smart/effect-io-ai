Package: `effect`<br />
Module: `Console`<br />

## Console.time

Starts a scoped timer for `label` and automatically ends it when the Effect scope is finalized.

**Example** (Timing scoped work)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* Console.time("operation-timer")
      yield* Effect.sleep("1 second")
      yield* Console.log("Operation completed")
      // Timer ends automatically when scope closes
    })
  )
})
```

**Signature**

```ts
declare const time: (label?: string | undefined) => Effect.Effect<void, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L506)

Since v2.0.0