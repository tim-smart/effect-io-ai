Package: `effect`<br />
Module: `Stream`<br />

## Stream.suspend

Creates a lazily constructed stream.

The stream factory is evaluated each time the stream is run.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.suspend(() => Stream.make(1, 2, 3)).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const suspend: <A, E, R>(stream: LazyArg<Stream<A, E, R>>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L798)

Since v2.0.0