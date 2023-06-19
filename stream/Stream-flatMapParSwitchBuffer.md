# flatMapParSwitchBuffer

Like `flatMapParSwitch`, but with a configurable `bufferSize` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flatMapParSwitchBuffer: {
  <A, R2, E2, A2>(n: number, bufferSize: number, f: (a: A) => Stream<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, n: number, bufferSize: number, f: (a: A) => Stream<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
