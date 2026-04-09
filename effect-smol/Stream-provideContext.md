Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideContext

Provides multiple services to the stream using a context.

**Example**

```ts
import { Console, Effect, Context, Stream } from "effect"

class Config extends Context.Service<Config, { readonly prefix: string }>()("Config") {}
class Greeter extends Context.Service<Greeter, { greet: (name: string) => string }>()("Greeter") {}

const context = Context.make(Config, { prefix: "Hello" }).pipe(
  Context.add(Greeter, { greet: (name: string) => `${name}!` })
)

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const config = yield* Effect.service(Config)
    const greeter = yield* Effect.service(Greeter)
    return greeter.greet(config.prefix)
  })
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(Stream.provideContext(stream, context))
  yield* Console.log(result)
})

Effect.runPromise(program)
// ["Hello!"]
```

**Signature**

```ts
declare const provideContext: { <R2>(context: Context.Context<R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, R2>>; <A, E, R, R2>(self: Stream<A, E, R>, context: Context.Context<R2>): Stream<A, E, Exclude<R, R2>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9390)

Since v4.0.0