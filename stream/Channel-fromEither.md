# fromEither

Constructs a channel from an `Either`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromEither: <E, A>(
  either: Either.Either<E, A>
) => Channel<never, unknown, unknown, unknown, E, never, A>
```
