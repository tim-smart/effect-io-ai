Package: `effect`<br />
Module: `Stream`<br />

## Stream.sync

Creates a stream that synchronously evaluates a function and emits the result as a single value.

The function is evaluated each time the stream is run.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.sync(() => 2 + 1).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 3 ]
```

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L858)

Since v2.0.0