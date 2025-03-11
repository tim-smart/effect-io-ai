## fromEither

Constructs a channel from an `Either`.

**Signature**

```ts
declare const fromEither: <R, L>(either: Either.Either<R, L>) => Channel<never, unknown, L, unknown, R, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1094)

Since v2.0.0