# timed

Returns a new effect that executes this one and times the execution.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const timed: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, [Duration.Duration, A]>
```
