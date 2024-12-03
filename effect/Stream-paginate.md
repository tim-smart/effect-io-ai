# paginate

Like `Stream.unfold`, but allows the emission of values to end one step further
than the unfolding of the state. This is useful for embedding paginated
APIs, hence the name.

To import and use `paginate` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.paginate
```

**Example**

```ts
import { Effect, Option, Stream } from "effect"

const stream = Stream.paginate(0, (n) => [n, n < 3 ? Option.some(n + 1) : Option.none()])

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3 ] }
```

**Signature**

```ts
export declare const paginate: <S, A>(s: S, f: (s: S) => readonly [A, Option.Option<S>]) => Stream<A>
```
