Package: `effect`<br />
Module: `Random`<br />

## Random.Random

Represents a service for generating random numbers.

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const float = yield* Random.next
  const integer = yield* Random.nextInt
  const inRange = yield* Random.nextIntBetween(1, 100)
  const uuid = yield* Random.nextUUIDv4

  console.log("Float:", float)
  console.log("Integer:", integer)
  console.log("In range:", inRange)
  console.log("UUID:", uuid)
})
```

**Signature**

```ts
declare const Random: ServiceMap.Reference<{ nextIntUnsafe(): number; nextDoubleUnsafe(): number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L53)

Since v4.0.0