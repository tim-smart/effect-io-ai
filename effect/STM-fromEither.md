Package: `effect`<br />
Module: `STM`<br />

## STM.fromEither

Lifts an `Either` into a `STM`.

**Signature**

```ts
declare const fromEither: <A, E>(either: Either.Either<A, E>) => STM<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L793)

Since v2.0.0