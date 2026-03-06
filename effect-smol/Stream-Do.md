Package: `effect`<br />
Module: `Stream`<br />

## Stream.Do

Provides the entry point for do-notation style stream composition.

**Example**

```ts
import { Console, Effect, Stream, pipe } from "effect"

const program = pipe(
  Stream.Do,
  Stream.bind("value", () => Stream.fromArray([1, 2])),
  Stream.let("next", ({ value }) => value + 1)
)

const effect = Effect.gen(function*() {
  const collected = yield* Stream.runCollect(program)
  yield* Console.log(collected)
})

Effect.runPromise(effect)
//=> [{ value: 1, next: 2 }, { value: 2, next: 3 }]
```

**Signature**

```ts
declare const Do: Stream<{}, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9511)

Since v4.0.0