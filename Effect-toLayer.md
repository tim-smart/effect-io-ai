# toLayer

Constructs a layer from this effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.toLayer`.

### Signature

```typescript
export declare const toLayer: {
  <I, A>(tag: Context.Tag<I, A>): <R, E>(self: Effect<R, E, A>) => Layer.Layer<R, E, I>
  <R, E, A, I>(self: Effect<R, E, A>, tag: Context.Tag<I, A>): Layer.Layer<R, E, I>
}
```
