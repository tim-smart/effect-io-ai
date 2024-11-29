# mapInputContext

Provides some of the context required to run this effect,
leaving the remainder `R0`.

To import and use `mapInputContext` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapInputContext
undefined

**Signature**

```ts
export declare const mapInputContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <A, E>(self: Effect<A, E, R>) => Effect<A, E, R0>
  <A, E, R, R0>(self: Effect<A, E, R>, f: (context: Context.Context<R0>) => Context.Context<R>): Effect<A, E, R0>
}
```
