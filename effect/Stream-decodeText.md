# decodeText

Decode Uint8Array chunks into a stream of strings using the specified encoding.

To import and use `decodeText` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.decodeText
```

**Signature**

```ts
export declare const decodeText: {
  (encoding?: string): <R, E>(self: Stream<R, E, Uint8Array>) => Stream<R, E, string>
  <R, E>(self: Stream<R, E, Uint8Array>, encoding?: string): Stream<R, E, string>
}
```
