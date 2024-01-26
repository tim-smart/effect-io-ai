# provideService

Provides the effect with the single service it requires. If the effect
requires more than one service use `provide` instead.

To import and use `provideService` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.provideService
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(
    tag: T,
    service: Context.Tag.Service<T>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<Exclude<R, Context.Tag.Identifier<T>>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(
    self: Effect<R, E, A>,
    tag: T,
    service: Context.Tag.Service<T>
  ): Effect<Exclude<R, Context.Tag.Identifier<T>>, E, A>
}
```
