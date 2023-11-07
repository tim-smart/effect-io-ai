# rechunk

Re-chunks the elements of the stream into chunks of `n` elements each. The
last chunk might contain less than `n` elements.

To import and use `rechunk` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.rechunk
```

**Signature**

```ts
export declare const rechunk: {
  (n: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, n: number): Stream<R, E, A>
}
```
