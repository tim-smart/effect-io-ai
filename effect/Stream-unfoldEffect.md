Package: `effect`<br />
Module: `Stream`<br />

## Stream.unfoldEffect

Creates a stream by effectfully peeling off the "layers" of a value of type
`S`.

**Example**

```ts
import { Effect, Option, Random, Stream } from "effect"

const stream = Stream.unfoldEffect(1, (n) =>
  Random.nextBoolean.pipe(
    Effect.map((b) => (b ? Option.some([n, -n]) : Option.some([n, n])))
  ))

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// { _id: 'Chunk', values: [ 1, -1, -1, -1, -1 ] }
```

**Signature**

```ts
declare const unfoldEffect: <S, A, E, R>(s: S, f: (s: S) => Effect.Effect<Option.Option<readonly [A, S]>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5407)

Since v2.0.0