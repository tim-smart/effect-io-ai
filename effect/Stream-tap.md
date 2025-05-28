Package: `effect`<br />
Module: `Stream`<br />

## Stream.tap

Adds an effect to consumption of every element of the stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(
  Stream.tap((n) => Console.log(`before mapping: ${n}`)),
  Stream.map((n) => n * 2),
  Stream.tap((n) => Console.log(`after mapping: ${n}`))
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// before mapping: 1
// after mapping: 2
// before mapping: 2
// after mapping: 4
// before mapping: 3
// after mapping: 6
// { _id: 'Chunk', values: [ 2, 4, 6 ] }
```

**Signature**

```ts
declare const tap: { <A, X, E2, R2>(f: (a: NoInfer<A>) => Effect.Effect<X, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (a: NoInfer<A>) => Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4907)

Since v2.0.0