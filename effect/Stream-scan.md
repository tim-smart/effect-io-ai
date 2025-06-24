Package: `effect`<br />
Module: `Stream`<br />

## Stream.scan

Statefully maps over the elements of this stream to produce all
intermediate results of type `S` given an initial S.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(1, 6).pipe(Stream.scan(0, (a, b) => a + b))

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0,  1,  3, 6, 10, 15, 21 ] }
```

**Signature**

```ts
declare const scan: { <S, A>(s: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Stream<S, E, R>; <A, E, R, S>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Stream<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4513)

Since v2.0.0