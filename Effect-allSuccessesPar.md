# allSuccessesPar

Evaluate and run each effect in the structure in parallel and collect the
results, discarding results from failed effects.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const allSuccessesPar: <R, E, A>(elements: Iterable<Effect<R, E, A>>) => Effect<R, never, A[]>
```
