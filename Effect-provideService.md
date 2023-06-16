# provideService

Provides the effect with the single service it requires. If the effect
requires more than one service use `provideContext` instead.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const provideService: {
  <T extends Context.Tag<any, any>>(tag: T, service: Context.Tag.Service<T>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<Exclude<R, Context.Tag.Identifier<T>>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(self: Effect<R, E, A>, tag: T, service: Context.Tag.Service<T>): Effect<
    Exclude<R, Context.Tag.Identifier<T>>,
    E,
    A
  >
}
```
