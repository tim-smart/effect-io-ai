Package: `effect`<br />
Module: `Stream`<br />

## Stream.updateServices

Transforms the stream's required services by mapping the current service map
to a new one.

**Example**

```ts
import { Console, Effect, ServiceMap, Stream } from "effect"

class Logger extends ServiceMap.Service<Logger, { prefix: string }>()("Logger") {}
class Config extends ServiceMap.Service<Config, { name: string }>()("Config") {}

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const logger = yield* Effect.service(Logger)
    const config = yield* Effect.service(Config)
    return `${logger.prefix}${config.name}`
  })
)

const updated = stream.pipe(
  Stream.updateServices((services: ServiceMap.ServiceMap<Logger>) =>
    ServiceMap.add(services, Config, { name: "World" })
  )
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(updated)
  yield* Console.log(values)
})

Effect.runPromise(
  Effect.provideService(program, Logger, { prefix: "Hello " })
)
//=> [ "Hello World" ]
```

**Signature**

```ts
declare const updateServices: { <R, R2>(f: (services: ServiceMap.ServiceMap<R2>) => ServiceMap.ServiceMap<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E, R2>; <A, E, R, R2>(self: Stream<A, E, R>, f: (services: ServiceMap.ServiceMap<R2>) => ServiceMap.ServiceMap<R>): Stream<A, E, R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9469)

Since v2.0.0