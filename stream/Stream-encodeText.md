# encodeText

Encode a stream of strings into a stream of Uint8Array chunks using the specified encoding.

To import and use `encodeText` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.encodeText
```

**Signature**

```ts
export declare const encodeText: <R, E>(self: Stream<R, E, string>) => Stream<R, E, Uint8Array>
```
