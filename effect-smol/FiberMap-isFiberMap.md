Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.isFiberMap

Returns `true` if a value is a `FiberMap`.

**Details**

This is a type guard that checks for the `FiberMap` runtime marker.

**Example** (Checking if a value is a FiberMap)

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  console.log(FiberMap.isFiberMap(map)) // true
  console.log(FiberMap.isFiberMap({})) // false
  console.log(FiberMap.isFiberMap(null)) // false
})
```

**Signature**

```ts
declare const isFiberMap: (u: unknown) => u is FiberMap<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L95)

Since v2.0.0