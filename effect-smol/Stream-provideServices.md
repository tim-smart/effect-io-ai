Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideServices

Provides multiple services to the stream using a service map.

**Example**

```ts
import { Console, Effect, ServiceMap, Stream } from "effect"

class Config extends ServiceMap.Service<Config, { readonly prefix: string }>()("Config") {}
class Greeter extends ServiceMap.Service<Greeter, { greet: (name: string) => string }>()("Greeter") {}

const services = ServiceMap.make(Config, { prefix: "Hello" }).pipe(
  ServiceMap.add(Greeter, { greet: (name: string) => `${name}!` })
)

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const config = yield* Effect.service(Config)
    const greeter = yield* Effect.service(Greeter)
    return greeter.greet(config.prefix)
  })
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(Stream.provideServices(stream, services))
  yield* Console.log(result)
})

Effect.runPromise(program)
// ["Hello!"]
```

**Signature**

```ts
declare const provideServices: { <R2>(services: ServiceMap.ServiceMap<R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, R2>>; <A, E, R, R2>(self: Stream<A, E, R>, services: ServiceMap.ServiceMap<R2>): Stream<A, E, Exclude<R, R2>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9225)

Since v4.0.0