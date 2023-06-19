# collectWhile

Transforms all elements of the stream for as long as the specified partial
function is defined.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collectWhile: <A, A2>(
  pf: (a: A) => Option.Option<A2>
) => <R, E>(self: Stream<R, E, A>) => Stream<R, E, A2>
```
