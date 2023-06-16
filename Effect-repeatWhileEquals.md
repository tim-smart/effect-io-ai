# repeatWhileEquals

Repeats this effect for as long as its value is equal to the specified
value or until the first failure.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const repeatWhileEquals: {
  <A>(value: A): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, value: A): Effect<R, E, A>
}
```
