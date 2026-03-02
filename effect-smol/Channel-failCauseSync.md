Package: `effect`<br />
Module: `Channel`<br />

## Channel.failCauseSync

Constructs a channel that fails immediately with the specified lazily
evaluated `Cause`.

**Example**

```ts
import { Cause, Channel } from "effect"

// Create a channel that fails with a lazily computed cause
const failedChannel = Channel.failCauseSync(() => {
  const errorType = Math.random() > 0.5 ? "A" : "B"
  return Cause.fail(`Runtime error ${errorType}`)
})

// Create a channel with die cause computation
const dieCauseChannel = Channel.failCauseSync(() => {
  const timestamp = Date.now()
  return Cause.die(`Error at ${timestamp}`)
})
```

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L975)

Since v2.0.0