# provideContext

Provides the effect with its required context, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <E, A>(self: Effect<R, E, A>) => Effect<never, E, A>
  <R, E, A>(self: Effect<R, E, A>, context: Context.Context<R>): Effect<never, E, A>
}
```
