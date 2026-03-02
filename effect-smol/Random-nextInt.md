Package: `effect`<br />
Module: `Random`<br />

## Random.nextInt

Generates a random integer between `Number.MIN_SAFE_INTEGER` (inclusive)
and `Number.MAX_SAFE_INTEGER` (inclusive).

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const randomInt = yield* Random.nextInt
  console.log("Random integer:", randomInt)
})
```

**Signature**

```ts
declare const nextInt: Effect.Effect<number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L114)

Since v4.0.0