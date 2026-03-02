Package: `effect`<br />
Module: `Effect`<br />

## Effect.serviceOption

Optionally accesses a service from the environment.

**Details**

This function attempts to access a service from the environment. If the
service is available, it returns `Some(service)`. If the service is not
available, it returns `None`. Unlike `service`, this function does not
require the service to be present in the environment.

**Example**

```ts
import { Effect, Option, ServiceMap } from "effect"

// Define a service key
const Logger = ServiceMap.Service<{
  log: (msg: string) => void
}>("Logger")

// Use serviceOption to optionally access the logger
const program = Effect.gen(function*() {
  const maybeLogger = yield* Effect.serviceOption(Logger)

  if (Option.isSome(maybeLogger)) {
    maybeLogger.value.log("Service is available")
  } else {
    console.log("Service not available")
  }
})
```

**Signature**

```ts
declare const serviceOption: <I, S>(key: ServiceMap.Key<I, S>) => Effect<Option<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5746)

Since v2.0.0