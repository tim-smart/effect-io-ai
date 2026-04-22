Package: `effect`<br />
Module: `index`<br />

## index.Random

Re-exports all named exports from the "./Random.ts" module as `Random`.

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const randomFloat = yield* Random.next
  console.log("Random float:", randomFloat)

  const randomInt = yield* Random.nextInt
  console.log("Random integer:", randomInt)

  const diceRoll = yield* Random.nextIntBetween(1, 6)
  console.log("Dice roll:", diceRoll)
})
```

**Signature**

```ts
export * as Random from "./Random.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L2945)

Since v4.0.0