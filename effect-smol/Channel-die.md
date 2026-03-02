Package: `effect`<br />
Module: `Channel`<br />

## Channel.die

Constructs a channel that fails immediately with the specified defect.

**Example**

```ts
import { Channel } from "effect"

// Create a channel that dies with a string defect
const diedChannel = Channel.die("Unrecoverable error")

// Create a channel that dies with an Error object
const errorDefect = Channel.die(new Error("System failure"))

// Die with any value as a defect
const objectDefect = Channel.die({
  code: "SYSTEM_FAILURE",
  details: "Critical system component failed"
})
```

**Signature**

```ts
declare const die: (defect: unknown) => Channel<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1002)

Since v2.0.0