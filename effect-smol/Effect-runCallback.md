Package: `effect`<br />
Module: `Effect`<br />

## Effect.runCallback

Runs an effect asynchronously, registering `onExit` as a fiber observer and
returning an interruptor.

The interruptor calls `fiber.interruptUnsafe` with the optional interruptor
id.

**Example**

```ts
import { Console, Effect, Exit } from "effect"

const program = Effect.gen(function*() {
  yield* Console.log("working")
  return "done"
})

const interrupt = Effect.runCallback(program, {
  onExit: (exit) => {
    Effect.runSync(
      Exit.match(exit, {
        onFailure: () => Console.log("failed"),
        onSuccess: (value) => Console.log(`success: ${value}`)
      })
    )
  }
})

// Output:
// working
// success: done

// interrupt() to cancel the fiber if needed
```

**Signature**

```ts
declare const runCallback: <A, E>(effect: Effect<A, E, never>, options?: (RunOptions & { readonly onExit: (exit: Exit.Exit<A, E>) => void; }) | undefined) => (interruptor?: number | undefined) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8432)

Since v4.0.0