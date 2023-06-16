# as

This function maps the success value of an `Effect` value to a specified
constant value.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.as`.

### Signature

```typescript
export declare const as: {
  <B>(value: B): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, B>
  <R, E, A, B>(self: Effect<R, E, A>, value: B): Effect<R, E, B>
}
```
