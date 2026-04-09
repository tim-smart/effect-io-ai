Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideServiceEffect

Provides a service to the stream using an effect, removing the requirement and adding the effect's error and environment.

**Example**

```ts
import { Console, Effect, Context, Stream } from "effect"

class ApiConfig extends Context.Service<ApiConfig, { readonly baseUrl: string }>()("ApiConfig") {}

const stream = Stream.fromEffect(
  Effect.gen(function*() {
    const config = yield* Effect.service(ApiConfig)
    return config.baseUrl
  })
)

const withConfig = stream.pipe(
  Stream.provideServiceEffect(
    ApiConfig,
    Effect.succeed({ baseUrl: "https://example.com" }).pipe(
      Effect.tap(() => Console.log("Loading config..."))
    )
  )
)

const program = Stream.runCollect(withConfig).pipe(
  Effect.flatMap((values) => Console.log(values))
)

Effect.runPromise(program)
// Output:
// Loading config...
// ["https://example.com"]
```

**Signature**

```ts
declare const provideServiceEffect: { <I, S, ES, RS>(key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | ES, Exclude<R, I> | RS>; <A, E, R, I, S, ES, RS>(self: Stream<A, E, R>, key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): Stream<A, E | ES, Exclude<R, I> | RS>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9491)

Since v4.0.0