Package: `effect`<br />
Module: `Stream`<br />

## Stream.updateContext

Transforms the stream's required services by mapping the current context
to a new one.

**Example**

```ts
import { Console, Effect, Context, Stream } from "effect"

class Logger extends Context.Service<Logger, { prefix: string }>()("Logger") {}
class Config extends Context.Service<Config, { name: string }>()("Config") {}

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const logger = yield* Effect.service(Logger)
    const config = yield* Effect.service(Config)
    return `${logger.prefix}${config.name}`
  })
)

const updated = stream.pipe(
  Stream.updateContext((context: Context.Context<Logger>) =>
    Context.add(context, Config, { name: "World" })
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
declare const updateContext: { <R, R2>(f: (context: Context.Context<R2>) => Context.Context<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E, R2>; <A, E, R, R2>(self: Stream<A, E, R>, f: (context: Context.Context<R2>) => Context.Context<R>): Stream<A, E, R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9548)

Since v2.0.0