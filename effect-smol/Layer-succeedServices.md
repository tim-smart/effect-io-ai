Package: `effect`<br />
Module: `Layer`<br />

## Layer.succeedServices

Constructs a layer from the specified value, which must return one or more
services.

This is a more general version of `succeed` that allows you to provide multiple
services at once through a `ServiceMap`.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

const services = ServiceMap.make(Database, {
  query: (sql: string) => Effect.succeed("result")
})
  .pipe(
    ServiceMap.add(Logger, {
      log: (msg: string) => Effect.sync(() => console.log(msg))
    })
  )

const layer = Layer.succeedServices(services)
```

**Signature**

```ts
declare const succeedServices: <A>(services: ServiceMap.ServiceMap<A>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L652)

Since v2.0.0