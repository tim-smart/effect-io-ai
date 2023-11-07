# mapInputContext

Provides some of the context required to run this effect,
leaving the remainder `R0`.

To import and use `mapInputContext` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.mapInputContext
```

**Signature**

```ts
export declare const mapInputContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <E, A>(self: Effect<R, E, A>) => Effect<R0, E, A>
  <R0, R, E, A>(self: Effect<R, E, A>, f: (context: Context.Context<R0>) => Context.Context<R>): Effect<R0, E, A>
}
```
