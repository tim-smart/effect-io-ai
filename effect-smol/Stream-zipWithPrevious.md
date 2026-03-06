Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithPrevious

Zips each element with its previous element, starting with `None`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.zipWithPrevious(Stream.make(1, 2, 3, 4))

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [
//   [ { _id: 'Option', _tag: 'None' }, 1 ],
//   [ { _id: 'Option', _tag: 'Some', value: 1 }, 2 ],
//   [ { _id: 'Option', _tag: 'Some', value: 2 }, 3 ],
//   [ { _id: 'Option', _tag: 'Some', value: 3 }, 4 ]
// ]
```

**Signature**

```ts
declare const zipWithPrevious: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A], E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3598)

Since v2.0.0