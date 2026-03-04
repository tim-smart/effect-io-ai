Package: `effect`<br />
Module: `Layer`<br />

## Layer.provide

Feeds the output services of this builder into the input of the specified
builder, resulting in a new builder with the inputs of this builder as
well as any leftover inputs, and the outputs of the specified builder.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class UserService extends ServiceMap.Service<UserService, {
  readonly getUser: (id: string) => Effect.Effect<{
    id: string
    name: string
  }>
}>()("UserService") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Create dependency layers
const databaseLayer = Layer.succeed(Database)({
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`DB: ${sql}`))
})

const loggerLayer = Layer.succeed(Logger)({
  log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(`[LOG] ${msg}`)))
})

// UserService depends on Database and Logger
const userServiceLayer = Layer.effect(UserService)(Effect.gen(function*() {
  const database = yield* Database
  const logger = yield* Logger

  return {
    getUser: Effect.fn("UserService.getUser")(function*(id: string) {
        yield* logger.log(`Looking up user ${id}`)
        const result = yield* database.query(
          `SELECT * FROM users WHERE id = ${id}`
        )
        return { id, name: result }
      })
  }
}))

// Provide dependencies to UserService layer
const userServiceWithDependencies = userServiceLayer.pipe(
  Layer.provide(Layer.mergeAll(databaseLayer, loggerLayer))
)

// Now UserService layer has no dependencies
const program = Effect.gen(function*() {
  const userService = yield* UserService
  return yield* userService.getUser("123")
}).pipe(
  Effect.provide(userServiceWithDependencies)
)
```

**Signature**

```ts
declare const provide: { <RIn, E, ROut>(that: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(self: Layer<ROut2, E2, RIn2>) => Layer<ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <const Layers extends [Any, ...Array<Any>]>(that: Layers): <A, E, R>(self: Layer<A, E, R>) => Layer<A, E | Error<Layers[number]>, Services<Layers[number]> | Exclude<R, Success<Layers[number]>>>; <RIn2, E2, ROut2, RIn, E, ROut>(self: Layer<ROut2, E2, RIn2>, that: Layer<ROut, E, RIn>): Layer<ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <A, E, R, const Layers extends [Any, ...Array<Any>]>(self: Layer<A, E, R>, that: Layers): Layer<A, E | Error<Layers[number]>, Services<Layers[number]> | Exclude<R, Success<Layers[number]>>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1082)

Since v2.0.0