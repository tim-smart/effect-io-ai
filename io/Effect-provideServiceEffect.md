# provideServiceEffect

Provides the effect with the single service it requires. If the effect
requires more than one service use `provideContext` instead.

To import and use `provideServiceEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.provideServiceEffect
```

**Signature**

```ts
export declare const provideServiceEffect: {
  <T extends Context.Tag<any, any>, R1, E1>(tag: T, effect: Effect<R1, E1, Context.Tag.Service<T>>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R1 | Exclude<R, Context.Tag.Identifier<T>>, E1 | E, A>
  <R, E, A, T extends Context.Tag<any, any>, R1, E1>(
    self: Effect<R, E, A>,
    tag: T,
    effect: Effect<R1, E1, Context.Tag.Service<T>>
  ): Effect<R1 | Exclude<R, Context.Tag.Identifier<T>>, E | E1, A>
}
```
