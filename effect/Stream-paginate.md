Package: `effect`<br />
Module: `Stream`<br />

## Stream.paginate

Like `Stream.unfold`, but allows the emission of values to end one step further
than the unfolding of the state. This is useful for embedding paginated
APIs, hence the name.

**Example**

```ts
import { Effect, Option, Stream } from "effect"

const stream = Stream.paginate(0, (n) => [
  n,
  n < 3 ? Option.some(n + 1) : Option.none()
])

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3 ] }
```

**Signature**

```ts
declare const paginate: <S, A>(s: S, f: (s: S) => readonly [A, Option.Option<S>]) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3379)

Since v2.0.0