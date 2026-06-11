Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.isFiber

Checks whether a value is a Fiber. This is a type guard that can be used to
determine if an unknown value is a Fiber instance.

**When to use**

Use when checking values at boundaries where an unknown value may be a
runtime fiber.

**Details**

The check looks for the internal Fiber type ID marker and does not inspect
the fiber's current state.

**Example** (Checking for fibers)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  // Create a fiber
  const fiber = yield* Effect.forkChild(Effect.succeed(42))

  // Test if values are fibers
  console.log(Fiber.isFiber(fiber)) // true
  console.log(Fiber.isFiber("hello")) // false
  console.log(Fiber.isFiber(42)) // false
  console.log(Fiber.isFiber(null)) // false

  // Use as a type guard
  const maybeValue: unknown = fiber
  if (Fiber.isFiber(maybeValue)) {
    // TypeScript knows maybeValue is a Fiber here
    console.log(`Fiber ID: ${maybeValue.id}`)
  }
})
```

**Signature**

```ts
declare const isFiber: (u: unknown) => u is Fiber<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L571)

Since v2.0.0