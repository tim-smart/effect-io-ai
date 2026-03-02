Package: `effect`<br />
Module: `Random`<br />

## Random.nextUUIDv4

Generates a random UUID (v4) string.

**Example**

```ts
import { Effect, Random } from "effect"

const program = Effect.gen(function*() {
  const uuid = yield* Random.nextUUIDv4
  console.log("UUID:", uuid)
})
```

**Signature**

```ts
declare const nextUUIDv4: Effect.Effect<string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Random.ts#L212)

Since v4.0.0