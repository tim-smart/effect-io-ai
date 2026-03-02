Package: `effect`<br />
Module: `Effect`<br />

## Effect.updateServices

Provides part of the required context while leaving the rest unchanged.

**Details**

This function allows you to transform the context required by an effect,
providing part of the context and leaving the rest to be fulfilled later.

**Example**

```ts
import { Effect, ServiceMap } from "effect"

// Define services
const Logger = ServiceMap.Service<{
  log: (msg: string) => void
}>("Logger")
const Config = ServiceMap.Service<{
  name: string
}>("Config")

const program = Effect.service(Config).pipe(
  Effect.map((config) => `Hello ${config.name}!`)
)

// Transform services by providing Config while keeping Logger requirement
const configured = program.pipe(
  Effect.updateServices((services: ServiceMap.ServiceMap<typeof Logger>) =>
    ServiceMap.add(services, Config, { name: "World" })
  )
)

// The effect now requires only Logger service
const result = Effect.provideService(configured, Logger, {
  log: (msg) => console.log(msg)
})
```

**Signature**

```ts
declare const updateServices: { <R2, R>(f: (services: ServiceMap.ServiceMap<R2>) => ServiceMap.ServiceMap<NoInfer<R>>): <A, E>(self: Effect<A, E, R>) => Effect<A, E, R2>; <A, E, R, R2>(self: Effect<A, E, R>, f: (services: ServiceMap.ServiceMap<R2>) => ServiceMap.ServiceMap<NoInfer<R>>): Effect<A, E, R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5788)

Since v4.0.0