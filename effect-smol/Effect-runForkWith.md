Package: `effect`<br />
Module: `Effect`<br />

## Effect.runForkWith

Runs an effect in the background with the provided services.

**Example** (Running with services in the background)

```ts
import { Context, Effect } from "effect"

interface Logger {
  log: (message: string) => void
}

const Logger = Context.Service<Logger>("Logger")

const services = Context.make(Logger, {
  log: (message) => console.log(message)
})

const program = Effect.gen(function*() {
  const logger = yield* Logger
  logger.log("Hello from service!")
  return "done"
})

const fiber = Effect.runForkWith(services)(program)
```

**Signature**

```ts
declare const runForkWith: <R>(context: Context.Context<R>) => <A, E>(effect: Effect<A, E, R>, options?: RunOptions | undefined) => Fiber<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8174)

Since v4.0.0