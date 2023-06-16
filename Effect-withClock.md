# withClock

Executes the specified workflow with the specified implementation of the
clock service.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.withClock`.

### Signature

```typescript
export declare const withClock: {
  <A extends Clock.Clock>(value: A): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A extends Clock.Clock>(effect: Effect<R, E, A>, value: A): Effect<R, E, A>
}
```
