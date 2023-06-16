# contramapContext

Provides some of the context required to run this effect,
leaving the remainder `R0`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const contramapContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <E, A>(self: Effect<R, E, A>) => Effect<R0, E, A>
  <R0, R, E, A>(self: Effect<R, E, A>, f: (context: Context.Context<R0>) => Context.Context<R>): Effect<R0, E, A>
}
```
