Package: `effect`<br />
Module: `Layer`<br />

## Layer.launch

Builds this layer and uses it until it is interrupted. This is useful when
your entire application is a layer, such as an HTTP server.

**Example**

```ts
import { Console, Effect, Layer, Context } from "effect"

class HttpServer extends Context.Service<HttpServer, {
  readonly start: () => Effect.Effect<string>
  readonly stop: () => Effect.Effect<string>
}>()("HttpServer") {}

class Logger extends Context.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Server layer that starts an HTTP server
const serverLayer = Layer.effect(HttpServer)(Effect.gen(function*() {
  yield* Console.log("Starting HTTP server...")

  return {
    start: Effect.fn("HttpServer.start")(function*() {
        yield* Console.log("Server listening on port 3000")
        return "Server started"
      }),
    stop: Effect.fn("HttpServer.stop")(function*() {
        yield* Console.log("Server stopped gracefully")
        return "Server stopped"
      })
  }
}))

const loggerLayer = Layer.succeed(Logger)({
  log: Effect.fn("Logger.log")((msg: string) => Console.log(`[LOG] ${msg}`))
})

// Application layer combining all services
const appLayer = Layer.mergeAll(serverLayer, loggerLayer)

// Launch the application - runs until interrupted
const application = appLayer.pipe(
  Layer.launch,
  Effect.tapError((error) => Console.log(`Application failed: ${error}`)),
  Effect.tap(() => Console.log("Application completed"))
)

// This will run forever until externally interrupted
// Effect.runFork(application)
```

**Signature**

```ts
declare const launch: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect<never, E, RIn>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1819)

Since v2.0.0