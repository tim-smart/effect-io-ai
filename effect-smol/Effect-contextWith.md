Package: `effect`<br />
Module: `Effect`<br />

## Effect.contextWith

Transforms the current context using the provided function.

This function allows you to access the complete context and perform
computations based on all available services. This is useful when you need
to conditionally execute logic based on what services are available.

**Example**

```ts
import { Console, Effect, Option, Context } from "effect"

const Logger = Context.Service<{
  log: (msg: string) => void
}>("Logger")
const Cache = Context.Service<{
  get: (key: string) => string | null
}>("Cache")

const program = Effect.contextWith((services) => {
  const cacheOption = Context.getOption(services, Cache)
  const hasCache = Option.isSome(cacheOption)

  if (hasCache) {
    return Effect.gen(function*() {
      const cache = yield* Effect.service(Cache)
      yield* Console.log("Using cached data")
      return cache.get("user:123") || "default"
    })
  } else {
    return Effect.gen(function*() {
      yield* Console.log("No cache available, using fallback")
      return "fallback data"
    })
  }
})

const withCache = Effect.provideService(program, Cache, {
  get: () => "cached_value"
})
```

**Signature**

```ts
declare const contextWith: <R, A, E, R2>(f: (context: Context.Context<R>) => Effect<A, E, R2>) => Effect<A, E, R | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5603)

Since v2.0.0