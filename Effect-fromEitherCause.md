# fromEitherCause

Lifts an `Either<Cause<E>, A>` into an `Effect<never, E, A>`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const fromEitherCause: <E, A>(either: Either.Either<Cause.Cause<E>, A>) => Effect<never, E, A>
```
