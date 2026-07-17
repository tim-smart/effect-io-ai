Package: `effect`<br />
Module: `Channel`<br />

## Channel.orDie

Converts all errors in the channel to defects (unrecoverable failures).
This is useful when you want to treat errors as programming errors.

**Example** (Converting failures to defects)

```ts
import { Channel, Data } from "effect"

class ValidationError extends Data.TaggedError("ValidationError")<{
  readonly field: string
}> {}

// Create a channel that might fail
const failingChannel = Channel.fail(new ValidationError({ field: "email" }))

// Convert failures to defects
const fatalChannel = Channel.orDie(failingChannel)

// Any failure will now become a defect (uncaught exception)
```

**Signature**

```ts
declare const orDie: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, never, OutDone, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L5599)

Since v2.0.0