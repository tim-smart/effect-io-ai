# fromEitherCause

Lifts an `Either<Cause<E>, A>` into an `Effect<never, E, A>`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const fromEitherCause: <E, A>(either: Either.Either<Cause.Cause<E>, A>) => Effect<never, E, A>
```
