# groupByKeyBuffer

Like `groupByKey`, but with a configurable `bufferSize` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const groupByKeyBuffer: {
  <A, K>(f: (a: A) => K, bufferSize: number): <R, E>(self: Stream<R, E, A>) => GroupBy.GroupBy<R, E, K, A>
  <R, E, A, K>(self: Stream<R, E, A>, f: (a: A) => K, bufferSize: number): GroupBy.GroupBy<R, E, K, A>
}
```
