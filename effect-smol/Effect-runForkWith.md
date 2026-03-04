Package: `effect`<br />
Module: `Effect`<br />

## Effect.runForkWith

Runs an effect in the background with the provided services.

**Example**

```ts
import { Effect, ServiceMap } from "effect"

interface Logger {
  log: (message: string) => void
}

const Logger = ServiceMap.Service<Logger>("Logger")

const services = ServiceMap.make(Logger, {
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
declare const runForkWith: <R>(services: ServiceMap.ServiceMap<R>) => <A, E>(effect: Effect<A, E, R>, options?: RunOptions | undefined) => Fiber<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8308)

Since v4.0.0