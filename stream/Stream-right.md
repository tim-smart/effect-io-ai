# right

Fails with the error `None` if value is `Left`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const right: <R, E, A, A2>(self: Stream<R, E, Either.Either<A, A2>>) => Stream<R, Option.Option<E>, A2>
```
