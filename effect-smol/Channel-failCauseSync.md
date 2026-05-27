Package: `effect`<br />
Module: `Channel`<br />

## Channel.failCauseSync

Constructs a channel that fails immediately with the specified lazily
evaluated `Cause`.

**Example** (Failing with lazy causes)

```ts
import { Cause, Channel } from "effect"

// Create a channel that fails with a lazily computed cause
let attempts = 0
const failedChannel = Channel.failCauseSync(() => {
  attempts += 1
  return Cause.fail(`Runtime error after attempt ${attempts}`)
})

// Create a channel with die cause computation
const dieCauseChannel = Channel.failCauseSync(() => {
  const operation = "load-profile"
  return Cause.die(`Unexpected defect during ${operation}`)
})
```

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1098)

Since v2.0.0