# iterate

The infinite stream of iterative function application: a, f(a), f(f(a)),
f(f(f(a))), ...

To import and use `iterate` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.iterate
```

**Example**

```ts
import { Effect, Stream } from "effect"

// An infinite Stream of numbers starting from 1 and incrementing
const stream = Stream.iterate(1, (n) => n + 1)

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(10)))).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] }
```

**Signature**

```ts
export declare const iterate: <A>(value: A, next: (value: A) => A) => Stream<A>
```
