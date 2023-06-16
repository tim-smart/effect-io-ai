# repeatWhile

Repeats this effect while its value satisfies the specified effectful
predicate or until the first failure.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const repeatWhile: {
  <A>(f: Predicate<A>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>): Effect<R, E, A>
}
```
