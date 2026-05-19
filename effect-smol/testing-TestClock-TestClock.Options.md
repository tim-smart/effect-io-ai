Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.TestClock.Options

Options used when constructing a `TestClock`. `warningDelay` controls how
long the live clock waits before logging a warning when a test uses time
without advancing the test clock.

**Example** (Configuring the warning delay)

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  // Create a TestClock with custom warning delay
  const testClock = yield* TestClock.make({
    warningDelay: "30 seconds"
  })

  // Use the TestClock in your test
  yield* testClock.adjust("1 hour")
})
```

**Signature**

```ts
export interface Options {
    /**
     * The amount of time to wait before displaying a warning message when a
     * test is using time but is not advancing the `TestClock`.
     */
    readonly warningDelay?: Duration.Input
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L173)

Since v4.0.0