Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service

Create a `LayerMap` service that provides a dynamic set of resources based on
a key.

**Example** (Defining a layer map service)

```ts
import { Console, Context, Effect, Layer, LayerMap } from "effect"

// Define a service key
const Greeter = Context.Service<{
  readonly greet: Effect.Effect<string>
}>("Greeter")

// Create a service that wraps a LayerMap
class GreeterMap extends LayerMap.Service<GreeterMap>()("GreeterMap", {
  // Define the lookup function for the layer map
  lookup: (name: string) =>
    Layer.succeed(Greeter)({
      greet: Effect.succeed(`Hello, ${name}!`)
    }),

  // If a layer is not used for a certain amount of time, it can be removed
  idleTimeToLive: "5 seconds"
}) {}

// Usage
const program = Effect.gen(function*() {
  // Access and use the Greeter service
  const greeter = yield* Greeter
  yield* Console.log(yield* greeter.greet)
}).pipe(
  // Use the GreeterMap service to provide a variant of the Greeter service
  Effect.provide(GreeterMap.get("John"))
).pipe(
  // Provide the GreeterMap layer
  Effect.provide(GreeterMap.layer)
)
```

**Signature**

```ts
declare const Service: <Self>() => <const Id extends string, const Options extends NoExcessProperties<{ readonly lookup: (key: any) => Layer.Layer<any, any, any>; readonly dependencies?: ReadonlyArray<Layer.Layer<any, any, any>> | undefined; readonly idleTimeToLive?: IdleTimeToLiveInput<any> | undefined; readonly preloadKeys?: Iterable<Options extends { readonly lookup: (key: infer K) => any; } ? K : never> | undefined; }, Options> | NoExcessProperties<{ readonly layers: Record<string, Layer.Layer<any, any, any>>; readonly dependencies?: ReadonlyArray<Layer.Layer<any, any, any>> | undefined; readonly idleTimeToLive?: IdleTimeToLiveInput<any> | undefined; readonly preload?: boolean | undefined; }, Options>>(id: Id, options: Options) => TagClass<Self, Id, Options extends { readonly lookup: (key: infer K) => any; } ? K : Options extends { readonly layers: infer Layers; } ? keyof Layers : never, Service.Success<Options>, Options extends { readonly preload: true; } ? never : Service.Error<Options>, Service.Services<Options>, Options extends { readonly preload: true; } ? Service.Error<Options> : Options extends { readonly preloadKeys: Iterable<any>; } ? Service.Error<Options> : never, Options extends { readonly dependencies: ReadonlyArray<Layer.Layer<any, any, any>>; } ? Options["dependencies"][number] : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LayerMap.ts#L350)

Since v3.14.0