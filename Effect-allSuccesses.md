# allSuccesses

Evaluate and run each effect in the structure and collect the results,
discarding results from failed effects.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.allSuccesses`.

### Signature

```typescript
export declare const allSuccesses: <R, E, A>(as: Iterable<Effect<R, E, A>>) => Effect<R, never, A[]>
```
