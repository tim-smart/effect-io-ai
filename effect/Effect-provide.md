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
  <R2, E2, A2>(
    layer: Layer.Layer<R2, E2, A2>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | Exclude<R, A2>, E2 | E, A>
  <R2>(context: Context.Context<R2>): <R, E, A>(self: Effect<R, E, A>) => Effect<Exclude<R, R2>, E, A>
  <R2>(runtime: Runtime.Runtime<R2>): <R, E, A>(self: Effect<R, E, A>) => Effect<Exclude<R, R2>, E, A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, layer: Layer.Layer<R2, E2, A2>): Effect<R2 | Exclude<R, A2>, E | E2, A>
  <R, E, A, R2>(self: Effect<R, E, A>, context: Context.Context<R2>): Effect<Exclude<R, R2>, E, A>
  <R, E, A, R2>(self: Effect<R, E, A>, runtime: Runtime.Runtime<R2>): Effect<Exclude<R, R2>, E, A>
}
```
