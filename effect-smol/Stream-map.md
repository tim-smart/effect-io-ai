Package: `effect`<br />
Module: `Stream`<br />

## Stream.map

Transforms the elements of this stream using the supplied function.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.fromArray([1, 2, 3]).pipe(Stream.map((n, i) => n + i))
const program = Stream.runCollect(stream).pipe(
  Effect.tap((values) => Console.log(values))
)

Effect.runPromise(program)
// [ 1, 3, 5 ]
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A, i: number) => B): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B>(self: Stream<A, E, R>, f: (a: A, i: number) => B): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1730)

Since v2.0.0