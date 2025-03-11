## either

Replace the success value of the given `Micro` effect with an `Either`,
wrapping the success value in `Right` and wrapping any expected errors with
a `Left`.

**Signature**

```ts
declare const either: <A, E, R>(self: Micro<A, E, R>) => Micro<Either.Either<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2934)

Since v3.4.0