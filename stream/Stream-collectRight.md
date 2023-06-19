# collectRight

Filters any `Left` values.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collectRight: <R, E, E2, A>(self: Stream<R, E, Either.Either<E2, A>>) => Stream<R, E, A>
```
