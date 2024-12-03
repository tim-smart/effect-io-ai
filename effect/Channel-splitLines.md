# splitLines

Splits strings on newlines. Handles both Windows newlines (`\r\n`) and UNIX
newlines (`\n`).

To import and use `splitLines` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.splitLines
```

**Signature**

```ts
export declare const splitLines: <Err, Done>() => Channel<
  Chunk.Chunk<string>,
  Chunk.Chunk<string>,
  Err,
  Err,
  Done,
  Done,
  never
>
```
