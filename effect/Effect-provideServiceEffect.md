# provideServiceEffect

Provides the effect with the single service it requires. If the effect
requires more than one service use `provide` instead.

To import and use `provideServiceEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.provideServiceEffect
undefined

**Signature**

```ts
export declare const provideServiceEffect: {
  <T extends Context.Tag<any, any>, E1, R1>(
    tag: T,
    effect: Effect<Context.Tag.Service<T>, E1, R1>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R1 | Exclude<R, Context.Tag.Identifier<T>>>
  <A, E, R, T extends Context.Tag<any, any>, E1, R1>(
    self: Effect<A, E, R>,
    tag: T,
    effect: Effect<Context.Tag.Service<T>, E1, R1>
  ): Effect<A, E | E1, R1 | Exclude<R, Context.Tag.Identifier<T>>>
}
```
