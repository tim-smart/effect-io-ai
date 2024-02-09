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
  <R2, E2, R3>(
    layer: Layer.Layer<R3, E2, R2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R2 | Exclude<R, R3>>
  <R2>(context: Context.Context<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <R2>(runtime: Runtime.Runtime<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <A, E, R, R2, E2, R3>(self: Effect<A, E, R>, layer: Layer.Layer<R3, E2, R2>): Effect<A, E | E2, R2 | Exclude<R, R3>>
  <R, E, A, R2>(self: Effect<A, E, R>, context: Context.Context<R2>): Effect<A, E, Exclude<R, R2>>
  <R, E, A, R2>(self: Effect<A, E, R>, runtime: Runtime.Runtime<R2>): Effect<A, E, Exclude<R, R2>>
}
```
