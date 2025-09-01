Package: `effect`<br />
Module: `Either`<br />

## Either.andThen

Executes a sequence of two `Either`s. The second `Either` can be dependent on the result of the first `Either`.

**Signature**

```ts
declare const andThen: { <A, A2, E2>(f: (right: A) => Either<A2, E2>): <E>(self: Either<A, E>) => Either<A2, E | E2>; <A2, E2>(f: Either<A2, E2>): <E, A>(self: Either<A, E>) => Either<A2, E | E2>; <A, A2>(f: (right: A) => A2): <E>(self: Either<A, E>) => Either<A2, E>; <A2>(right: NotFunction<A2>): <A, E>(self: Either<A, E>) => Either<A2, E>; <A, E, A2, E2>(self: Either<A, E>, f: (right: A) => Either<A2, E2>): Either<A2, E | E2>; <A, E, A2, E2>(self: Either<A, E>, f: Either<A2, E2>): Either<A2, E | E2>; <A, E, A2>(self: Either<A, E>, f: (right: A) => A2): Either<A2, E>; <A, E, A2>(self: Either<A, E>, f: NotFunction<A2>): Either<A2, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L662)

Since v2.0.0