## either

Converts the failure channel into an `Either`.

**Signature**

```ts
declare const either: <A, E, R>(self: STM<A, E, R>) => STM<Either.Either<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L513)

Since v2.0.0