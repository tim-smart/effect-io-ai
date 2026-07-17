Package: `effect`<br />
Module: `Random`<br />

## Random.choice

Gets a random element from an iterable.

**When to use**

Use to select one value uniformly from a collection using the active `Random`
service.

**Details**

If the input type is known to be non-empty, the returned effect cannot fail.
Otherwise, empty iterables fail with `Cause.NoSuchElementError`.

**Example** (Choosing a random value)

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const value = yield* Random.choice(["red", "green", "blue"] as const)
  console.log(value)
})
```

**Signature**

```ts
declare const choice: <Self extends Iterable<unknown>>(elements: Self) => Self extends NonEmptyIterable.NonEmptyIterable<infer A> ? Effect.Effect<A> : Self extends Arr.NonEmptyReadonlyArray<infer A> ? Effect.Effect<A> : Self extends Iterable<infer A> ? Effect.Effect<A, Cause.NoSuchElementError> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Random.ts#L258)

Since v3.6.0