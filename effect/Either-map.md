Package: `effect`<br />
Module: `Either`<br />

## Either.map

Maps the `Right` side of an `Either` value to a new `Either` value.

**Signature**

```ts
declare const map: { <A, A2>(f: (right: A) => A2): <E>(self: Either<A, E>) => Either<A2, E>; <A, E, A2>(self: Either<A, E>, f: (right: A) => A2): Either<A2, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L365)

Since v2.0.0