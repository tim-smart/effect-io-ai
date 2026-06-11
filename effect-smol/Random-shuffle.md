Package: `effect`<br />
Module: `Random`<br />

## Random.shuffle

Uses the pseudo-random number generator to shuffle the specified iterable.

**When to use**

Use to randomly reorder an iterable using the active `Random` service.

**Example** (Shuffling values)

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Random.shuffle([1, 2, 3, 4, 5])
  console.log(values)
})
```

**Signature**

```ts
declare const shuffle: <A>(elements: Iterable<A>) => Effect.Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L216)

Since v2.0.0