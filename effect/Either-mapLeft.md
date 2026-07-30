Package: `effect`<br />
Module: `Either`<br />

## Either.mapLeft

Maps the `Left` side of an `Either` value to a new `Either` value.

**Signature**

```ts
declare const mapLeft: { <E, E2>(f: (left: E) => E2): <A>(self: Either<A, E>) => Either<A, E2>; <A, E, E2>(self: Either<A, E>, f: (left: E) => E2): Either<A, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L350)

Since v2.0.0