# provideSomeContext

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

To import and use `provideSomeContext` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.provideSomeContext
```

**Signature**

```ts
export declare const provideSomeContext: {
  <R>(context: Context.Context<R>): <R1, E, A>(self: Effect<R1, E, A>) => Effect<Exclude<R1, R>, E, A>
  <R, R1, E, A>(self: Effect<R1, E, A>, context: Context.Context<R>): Effect<Exclude<R1, R>, E, A>
}
```
