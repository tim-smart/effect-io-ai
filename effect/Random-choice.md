## choice

Get a random element from an iterable.

**Example**

```ts
import { Effect, Random } from "effect"

Effect.gen(function* () {
  const randomItem = yield* Random.choice([1, 2, 3])
  console.log(randomItem)
})
```

**Signature**

```ts
declare const choice: <Self extends Iterable<unknown>>(elements: Self) => Self extends NonEmptyIterable.NonEmptyIterable<infer A> ? Effect.Effect<A> : Self extends Array.NonEmptyReadonlyArray<infer A> ? Effect.Effect<A> : Self extends Iterable<infer A> ? Effect.Effect<A, Cause.NoSuchElementException> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Random.ts#L125)

Since v3.6.0