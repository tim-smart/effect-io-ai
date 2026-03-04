Package: `effect`<br />
Module: `Effect`<br />

## Effect.runCallbackWith

Forks an effect with the provided services, registers `onExit` as a fiber observer, and returns an interruptor.

The returned interruptor calls `fiber.interruptUnsafe`, optionally with an interruptor id.

**Example**

```ts
import { Console, Effect, Exit, ServiceMap } from "effect"

interface Logger {
  log: (message: string) => Effect.Effect<void>
}

const Logger = ServiceMap.Service<Logger>("Logger")

const services = ServiceMap.make(Logger, {
  log: (message) => Console.log(message)
})

const program = Effect.gen(function*() {
  const logger = yield* Logger
  yield* logger.log("Started")
  return "done"
})

const interrupt = Effect.runCallbackWith(services)(program, {
  onExit: (exit) => {
    if (Exit.isFailure(exit)) {
      // handle failure or interruption
    }
  }
})

// Use the interruptor if you need to cancel the fiber later.
interrupt()
```

**Signature**

```ts
declare const runCallbackWith: <R>(services: ServiceMap.ServiceMap<R>) => <A, E>(effect: Effect<A, E, R>, options?: (RunOptions & { readonly onExit: (exit: Exit.Exit<A, E>) => void; }) | undefined) => (interruptor?: number | undefined) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8355)

Since v4.0.0