# provideContext

Provides the effect with its required context, which eliminates its
dependency on `R`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const provideContext: {
  <R>(context: Context.Context<R>): <E, A>(self: Effect<R, E, A>) => Effect<never, E, A>
  <R, E, A>(self: Effect<R, E, A>, context: Context.Context<R>): Effect<never, E, A>
}
```
