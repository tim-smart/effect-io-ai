# absolve

This function submerges the error case of an `Either` value into an
`Effect` value. It is the inverse operation of `either`.

If the `Either` value is a `Right` value, then the `Effect` value will
succeed with the value contained in the `Right`. If the `Either` value
is a `Left` value, then the `Effect` value will fail with the error
contained in the `Left`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const absolve: <R, E, A>(self: Effect<R, E, Either.Either<E, A>>) => Effect<R, E, A>
```
