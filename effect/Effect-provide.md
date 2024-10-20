# provide

Splits the context into two parts, providing one part using the
specified layer/context/runtime and leaving the remainder `R0`

To import and use `provide` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.provide
```

**Signature**

```ts
export declare const provide: {
  <const Layers extends [Layer.Layer.Any, ...Array<Layer.Layer.Any>]>(
    layers: Layers
  ): <A, E, R>(
    self: Effect<A, E, R>
  ) => Effect<
    A,
    E | { [k in keyof Layers]: Layer.Layer.Error<Layers[k]> }[number],
    | { [k in keyof Layers]: Layer.Layer.Context<Layers[k]> }[number]
    | Exclude<R, { [k in keyof Layers]: Layer.Layer.Success<Layers[k]> }[number]>
  >
  <ROut, E2, RIn>(
    layer: Layer.Layer<ROut, E2, RIn>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, RIn | Exclude<R, ROut>>
  <R2>(context: Context.Context<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <R2>(runtime: Runtime.Runtime<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <E2, R2>(
    managedRuntime: ManagedRuntime.ManagedRuntime<R2, E2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, Exclude<R, R2>>
  <A, E, R, const Layers extends [Layer.Layer.Any, ...Array<Layer.Layer.Any>]>(
    self: Effect<A, E, R>,
    layers: Layers
  ): Effect<
    A,
    E | { [k in keyof Layers]: Layer.Layer.Error<Layers[k]> }[number],
    | { [k in keyof Layers]: Layer.Layer.Context<Layers[k]> }[number]
    | Exclude<R, { [k in keyof Layers]: Layer.Layer.Success<Layers[k]> }[number]>
  >
  <A, E, R, ROut, E2, RIn>(
    self: Effect<A, E, R>,
    layer: Layer.Layer<ROut, E2, RIn>
  ): Effect<A, E | E2, RIn | Exclude<R, ROut>>
  <A, E, R, R2>(self: Effect<A, E, R>, context: Context.Context<R2>): Effect<A, E, Exclude<R, R2>>
  <A, E, R, R2>(self: Effect<A, E, R>, runtime: Runtime.Runtime<R2>): Effect<A, E, Exclude<R, R2>>
  <A, E, E2, R, R2>(
    self: Effect<A, E, R>,
    runtime: ManagedRuntime.ManagedRuntime<R2, E2>
  ): Effect<A, E | E2, Exclude<R, R2>>
}
```
