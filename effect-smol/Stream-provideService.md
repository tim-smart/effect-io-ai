Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideService

Provides the stream with a single required service, eliminating that
requirement from its environment.

**Example**

```ts
import { Console, Effect, ServiceMap, Stream } from "effect"

class Greeter extends ServiceMap.Service<Greeter, {
  greet: (name: string) => string
}>()("Greeter") {}

const stream = Stream.fromEffect(
  Effect.service(Greeter).pipe(
    Effect.map((greeter) => greeter.greet("Ada"))
  )
)

const program = Effect.gen(function*() {
  const collected = yield* Stream.runCollect(
    stream.pipe(
      Stream.provideService(Greeter, {
        greet: (name) => `Hello, ${name}`
      })
    )
  )
  yield* Console.log(collected)
})

Effect.runPromise(program)
//=> ["Hello, Ada"]
```

**Signature**

```ts
declare const provideService: { <I, S>(key: ServiceMap.Key<I, S>, service: NoInfer<S>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Stream<A, E, R>, key: ServiceMap.Key<I, S>, service: NoInfer<S>): Stream<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9284)

Since v4.0.0