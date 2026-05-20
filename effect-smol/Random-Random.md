Package: `effect`<br />
Module: `Random`<br />

## Random.Random

Represents a service for generating pseudo-random numbers.

**Gotchas**

The default implementation is based on `Math.random` and is not
cryptographically secure. Replace the service with a cryptographically secure
implementation before using these generators for security-sensitive values.

**Example** (Accessing the random service)

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const float = yield* Random.next
  const integer = yield* Random.nextInt
  const inRange = yield* Random.nextIntBetween(1, 100)

  console.log("Float:", float)
  console.log("Integer:", integer)
  console.log("In range:", inRange)
})
```

**Signature**

```ts
declare const Random: Context.Reference<{ nextIntUnsafe(): number; nextDoubleUnsafe(): number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L67)

Since v2.0.0