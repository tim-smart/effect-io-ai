Package: `effect`<br />
Module: `Channel`<br />

## Channel.failCause

Constructs a channel that fails immediately with the specified `Cause`.

**Example**

```ts
import { Cause, Channel } from "effect"

// Create a channel that fails with a simple cause
const simpleCause = Cause.fail("Simple error")
const failedChannel = Channel.failCause(simpleCause)

// Create a channel with a die cause
const dieCause = Cause.die(new Error("System error"))
const dieFailure = Channel.failCause(dieCause)

// Create a channel with a simple fail cause
const failCause = Cause.fail("Simple error")
const simpleFail = Channel.failCause(failCause)
```

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Channel<never, E, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L949)

Since v2.0.0