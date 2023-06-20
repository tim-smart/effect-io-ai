# contramapContext

Provides some of the context required to run this effect,
leaving the remainder `R0`.

To import and use `contramapContext` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.contramapContext
```

**Signature**

```ts
export declare const contramapContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <E, A>(self: Effect<R, E, A>) => Effect<R0, E, A>
  <R0, R, E, A>(self: Effect<R, E, A>, f: (context: Context.Context<R0>) => Context.Context<R>): Effect<R0, E, A>
}
```
