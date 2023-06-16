# contextWithEffect

Effectually accesses the context of the effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.contextWithEffect`.

### Signature

```typescript
export declare const contextWithEffect: <R, R0, E, A>(
  f: (context: Context.Context<R0>) => Effect<R, E, A>
) => Effect<R | R0, E, A>
```
