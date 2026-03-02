Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.layer

Creates a `Layer` which constructs a `TestClock`.

**Example**

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

// Create a TestClock layer
const testClockLayer = TestClock.layer()

// Create a TestClock layer with custom options
const customTestClockLayer = TestClock.layer({
  warningDelay: "5 seconds"
})

const program = Effect.gen(function*() {
  // Use the layer in your program
  yield* TestClock.adjust("1 hour")
}).pipe(Effect.provide(testClockLayer))
```

**Signature**

```ts
declare const layer: (options?: TestClock.Options) => Layer.Layer<TestClock>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L370)

Since v4.0.0