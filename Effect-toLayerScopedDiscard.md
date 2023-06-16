# toLayerScopedDiscard

Constructs a layer from this effect.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const toLayerScopedDiscard: <R, E, _>(
  effect: Effect<R, E, _>
) => Layer.Layer<Exclude<R, Scope.Scope>, E, never>
```
