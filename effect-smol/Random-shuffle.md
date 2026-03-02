Package: `effect`<br />
Module: `Random`<br />

## Random.shuffle

Uses the pseudo-random number generator to shuffle the specified iterable.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L184)

Since v4.0.0