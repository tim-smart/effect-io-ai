Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithNext

Zips each element with the next element, pairing the final element with
`Option.none()`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.zipWithNext(Stream.make(1, 2, 3, 4))

Effect.runPromise(Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
}))
// Output: [
//   [ 1, { _id: 'Option', _tag: 'Some', value: 2 } ],
//   [ 2, { _id: 'Option', _tag: 'Some', value: 3 } ],
//   [ 3, { _id: 'Option', _tag: 'Some', value: 4 } ],
//   [ 4, { _id: 'Option', _tag: 'None' } ]
// ]
```

**Signature**

```ts
declare const zipWithNext: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, Option.Option<A>], E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3562)

Since v2.0.0