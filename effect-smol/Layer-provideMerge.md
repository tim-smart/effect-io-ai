Package: `effect`<br />
Module: `Layer`<br />

## Layer.provideMerge

Feeds the output services of this layer into the input of the specified
layer, resulting in a new layer with the inputs of this layer, and the
outputs of both layers.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends Context.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

class UserService extends Context.Service<UserService, {
  readonly getUser: (id: string) => Effect.Effect<{
    id: string
    name: string
  }>
}>()("UserService") {}

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

// Provide dependencies and merge all services together
const allServicesLayer = userServiceLayer.pipe(
  Layer.provideMerge(Layer.mergeAll(databaseLayer, loggerLayer))
)

// Now the resulting layer provides UserService, Database, AND Logger
const program = Effect.gen(function*() {
  const userService = yield* UserService
  const logger = yield* Logger // Still available!
  const database = yield* Database // Still available!

  const user = yield* userService.getUser("123")
  yield* logger.log(`Found user: ${user.name}`)

  return user
}).pipe(
  Effect.provide(allServicesLayer)
)
```

**Signature**

```ts
declare const provideMerge: { <RIn, E, ROut>(that: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(self: Layer<ROut2, E2, RIn2>) => Layer<ROut | ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <const Layers extends [Any, ...Array<Any>]>(that: Layers): <A, E, R>(self: Layer<A, E, R>) => Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | Exclude<R, Success<Layers[number]>>>; <RIn2, E2, ROut2, RIn, E, ROut>(self: Layer<ROut2, E2, RIn2>, that: Layer<ROut, E, RIn>): Layer<ROut | ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <A, E, R, const Layers extends [Any, ...Array<Any>]>(self: Layer<A, E, R>, that: Layers): Layer<A | Success<Layers[number]>, E | Error<Layers[number]>, Services<Layers[number]> | Exclude<R, Success<Layers[number]>>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1237)

Since v2.0.0