# right

"Zooms in" on the value in the `Right` side of an `Either`, moving the
possibility that the value is a `Left` to the error channel.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const right: <R, E, A, B>(self: Effect<R, E, Either.Either<A, B>>) => Effect<R, Either.Either<A, E>, B>
```
