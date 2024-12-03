# unfold

Creates a stream by peeling off the "layers" of a value of type `S`.

To import and use `unfold` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.unfold
```

**Example**

```ts
import { Effect, Option, Stream } from "effect"

const stream = Stream.unfold(1, (n) => Option.some([n, n + 1]))

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5 ] }
```

**Signature**

```ts
export declare const unfold: <S, A>(s: S, f: (s: S) => Option.Option<readonly [A, S]>) => Stream<A>
```
