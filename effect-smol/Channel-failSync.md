Package: `effect`<br />
Module: `Channel`<br />

## Channel.failSync

Constructs a channel that fails immediately with the specified lazily
evaluated error.

**Example**

```ts
import { Channel } from "effect"

// Create a channel that fails with a lazily computed error
const failedChannel = Channel.failSync(() => {
  console.log("Computing error...")
  return new Error("Computed at runtime")
})

// The error computation is deferred until the channel runs
const conditionalError = Channel.failSync(() =>
  Math.random() > 0.5 ? "Error A" : "Error B"
)

// Use with expensive error construction
const expensiveError = Channel.failSync(() => {
  const timestamp = Date.now()
  return new Error(`Failed at: ${timestamp}`)
})
```

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L934)

Since v2.0.0