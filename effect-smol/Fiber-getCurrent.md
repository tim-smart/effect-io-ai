Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.getCurrent

Returns the current fiber if called from within a fiber context,
otherwise returns `undefined`.

**Example**

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const current = Fiber.getCurrent()
  if (current) {
    console.log(`Current fiber ID: ${current.id}`)
  }
})
```

**Signature**

```ts
declare const getCurrent: () => Fiber<any, any> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L480)

Since v2.0.0