# groupByKeyBuffer

Like `groupByKey`, but with a configurable `bufferSize` parameter.

To import and use `groupByKeyBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.groupByKeyBuffer
```

**Signature**

```ts
export declare const groupByKeyBuffer: {
  <A, K>(f: (a: A) => K, bufferSize: number): <R, E>(self: Stream<R, E, A>) => GroupBy.GroupBy<R, E, K, A>
  <R, E, A, K>(self: Stream<R, E, A>, f: (a: A) => K, bufferSize: number): GroupBy.GroupBy<R, E, K, A>
}
```
