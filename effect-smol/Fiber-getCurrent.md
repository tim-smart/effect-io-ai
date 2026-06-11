Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.getCurrent

Returns the current fiber if called from within a fiber context,
otherwise returns `undefined`.

**When to use**

Use when you need low-level runtime integrations that need access to the currently
executing fiber.

**Gotchas**

This is a synchronous accessor, not an Effect. It returns `undefined` outside
an active fiber runtime context.

**Example** (Getting the current fiber)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L605)

Since v4.0.0