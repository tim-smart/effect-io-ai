## fromEither

Converts an `Either` into a `Micro` effect, that will fail with the left side
of the either if it is a `Left`. Otherwise, it will succeed with the right
side of the either.

**Signature**

```ts
declare const fromEither: <R, L>(either: Either.Either<R, L>) => Micro<R, L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1005)

Since v3.4.0