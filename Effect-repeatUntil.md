# repeatUntil

Repeats this effect until its value satisfies the specified predicate or
until the first failure.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.repeatUntil`.

### Signature

```typescript
export declare const repeatUntil: {
  <A>(f: Predicate<A>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>): Effect<R, E, A>
}
```
