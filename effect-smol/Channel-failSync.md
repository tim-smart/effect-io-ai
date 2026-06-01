Package: `effect`<br />
Module: `Channel`<br />

## Channel.failSync

Constructs a channel that fails immediately with the specified lazily
evaluated error.

**When to use**

Use when the error value should be computed each time the channel runs instead
of when the channel is constructed.

**Example** (Failing with a lazy error)

```ts
import { Channel } from "effect"

// Create a channel that fails with a lazily computed error
const failedChannel = Channel.failSync(() => {
  console.log("Computing error...")
  return new Error("Computed at runtime")
})

// The error computation is deferred until the channel runs
let attempts = 0
const conditionalError = Channel.failSync(() => {
  attempts += 1
  return `Error after attempt ${attempts}`
})

// Use with expensive error construction
const expensiveError = Channel.failSync(() => {
  const requestId = "request-123"
  return new Error(`Failed while processing ${requestId}`)
})
```

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1049)

Since v2.0.0