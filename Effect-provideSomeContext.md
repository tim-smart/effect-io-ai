# provideSomeContext

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const provideSomeContext: {
  <R>(context: Context.Context<R>): <R1, E, A>(self: Effect<R1, E, A>) => Effect<Exclude<R1, R>, E, A>
  <R, R1, E, A>(self: Effect<R1, E, A>, context: Context.Context<R>): Effect<Exclude<R1, R>, E, A>
}
```
