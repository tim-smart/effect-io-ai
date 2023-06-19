# absolve

Submerges the error case of an `Either` into the `Stream`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const absolve: <R, E, A>(self: Stream<R, E, Either.Either<E, A>>) => Stream<R, E, A>
```
