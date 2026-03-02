Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.isFiberSet

Checks if a value is a FiberSet.

**Example**

```ts
import { Effect, FiberSet } from "effect"

Effect.gen(function*() {
  const set = yield* FiberSet.make()

  console.log(FiberSet.isFiberSet(set)) // true
  console.log(FiberSet.isFiberSet({})) // false
})
```

**Signature**

```ts
declare const isFiberSet: (u: unknown) => u is FiberSet<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L74)

Since v2.0.0