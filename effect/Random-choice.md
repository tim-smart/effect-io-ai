# choice

Get a random element from an iterable.

To import and use `choice` from the "Random" module:

```ts
import * as Random from "effect/Random"
// Can be accessed like this
Random.choice
```

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
export declare const choice: <Self extends Iterable<unknown>>(
  elements: Self
) => Self extends NonEmptyIterable.NonEmptyIterable<infer A>
  ? Effect.Effect<A>
  : Self extends Array.NonEmptyReadonlyArray<infer A>
    ? Effect.Effect<A>
    : Self extends Iterable<infer A>
      ? Effect.Effect<A, Cause.NoSuchElementException>
      : never
```
