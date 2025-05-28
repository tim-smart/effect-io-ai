Package: `effect`<br />
Module: `Stream`<br />

## Stream.filter

Filters the elements emitted by this stream using the provided function.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(1, 11).pipe(Stream.filter((n) => n % 2 === 0))

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 2, 4, 6, 8, 10 ] }
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, B extends A>(predicate: Predicate<B>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<B, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1623)

Since v2.0.0