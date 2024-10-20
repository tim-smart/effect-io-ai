# fromIterable

Creates a new `Stream` from an iterable collection of values.

To import and use `fromIterable` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromIterable
```

**Example**

```ts
import { Effect, Stream } from "effect"

const numbers = [1, 2, 3]

const stream = Stream.fromIterable(numbers)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => Stream<A>
```
