# splitLines

Splits strings on newlines. Handles both Windows newlines (`\r\n`) and UNIX
newlines (`\n`).

To import and use `splitLines` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.splitLines
```

**Signature**

```ts
export declare const splitLines: <R, E>(self: Stream<R, E, string>) => Stream<R, E, string>
```
