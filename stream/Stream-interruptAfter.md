# interruptAfter

Specialized version of `Stream.interruptWhen` which interrupts the
evaluation of this stream after the given `Duration`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const interruptAfter: {
  (duration: Duration.Duration): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.Duration): Stream<R, E, A>
}
```
