Package: `effect`<br />
Module: `Effect`<br />

## Effect.services

Returns the complete service map from the current context.

This function allows you to access all services that are currently available
in the effect's environment. This can be useful for debugging, introspection,
or when you need to pass the entire context to another function.

**Example**

```ts
import { Console, Effect, Option, ServiceMap } from "effect"

const Logger = ServiceMap.Service<{
  log: (msg: string) => void
}>("Logger")
const Database = ServiceMap.Service<{
  query: (sql: string) => string
}>("Database")

const program = Effect.gen(function*() {
  const allServices = yield* Effect.services()

  // Check if specific services are available
  const loggerOption = ServiceMap.getOption(allServices, Logger)
  const databaseOption = ServiceMap.getOption(allServices, Database)

  yield* Console.log(`Logger available: ${Option.isSome(loggerOption)}`)
  yield* Console.log(`Database available: ${Option.isSome(databaseOption)}`)
})

const serviceMap = ServiceMap.make(Logger, { log: console.log })
  .pipe(ServiceMap.add(Database, { query: () => "result" }))

const provided = Effect.provideServices(program, serviceMap)
```

**Signature**

```ts
declare const services: <R = never>() => Effect<ServiceMap.ServiceMap<R>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5553)

Since v2.0.0