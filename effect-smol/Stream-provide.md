Package: `effect`<br />
Module: `Stream`<br />

## Stream.provide

Provides a layer or service map to the stream, removing the corresponding
service requirements. Use `options.local` to build the layer every time; by
default, layers are shared between provide calls.

**Previously Known As:** `provideSomeLayer`, `provideSomeContext`.

**Example**

```ts
import { Console, Effect, Layer, ServiceMap, Stream } from "effect"

class Env extends ServiceMap.Service<Env, { readonly name: string }>()("Env") {}

const layer = Layer.succeed(Env)({ name: "Ada" })

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const env = yield* Effect.service(Env)
    return `Hello, ${env.name}`
  })
)

const withEnv = stream.pipe(Stream.provide(layer))

const program = Stream.runCollect(withEnv).pipe(
  Effect.flatMap((values) => Console.log(values))
)

Effect.runPromise(program)
// Output:
// ["Hello, Ada"]
```

**Signature**

```ts
declare const provide: { <AL, EL = never, RL = never>(layer: Layer.Layer<AL, EL, RL> | ServiceMap.ServiceMap<AL>, options?: { readonly local?: boolean | undefined; } | undefined): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | EL, Exclude<R, AL> | RL>; <A, E, R, AL, EL = never, RL = never>(self: Stream<A, E, R>, layer: Layer.Layer<AL, EL, RL> | ServiceMap.ServiceMap<AL>, options?: { readonly local?: boolean | undefined; } | undefined): Stream<A, E | EL, Exclude<R, AL> | RL>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9167)

Since v4.0.0