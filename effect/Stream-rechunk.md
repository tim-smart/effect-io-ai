# rechunk

Re-chunks the elements of the stream into chunks of `n` elements each. The
last chunk might contain less than `n` elements.

To import and use `rechunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.rechunk
undefined

**Signature**

```ts
export declare const rechunk: {
  (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>
}
```
