Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromiseWith

Executes an effect as a Promise with the provided services.

**Example**

```ts
import { Effect, ServiceMap } from "effect"

interface Config {
  apiUrl: string
}

const Config = ServiceMap.Service<Config>("Config")

const services = ServiceMap.make(Config, {
  apiUrl: "https://api.example.com"
})

const program = Effect.gen(function*() {
  const config = yield* Config
  return `Connecting to ${config.apiUrl}`
})

Effect.runPromiseWith(services)(program).then(console.log)
```

**Signature**

```ts
declare const runPromiseWith: <R>(services: ServiceMap.ServiceMap<R>) => <A, E>(effect: Effect<A, E, R>, options?: RunOptions | undefined) => Promise<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8515)

Since v4.0.0