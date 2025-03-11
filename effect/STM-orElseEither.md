## orElseEither

Returns a transactional effect that will produce the value of this effect
in left side, unless it fails or retries, in which case, it will produce
the value of the specified effect in right side.

**Signature**

```ts
declare const orElseEither: { <A2, E2, R2>(that: LazyArg<STM<A2, E2, R2>>): <A, E, R>(self: STM<A, E, R>) => STM<Either.Either<A2, A>, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: STM<A, E, R>, that: LazyArg<STM<A2, E2, R2>>): STM<Either.Either<A2, A>, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1367)

Since v2.0.0