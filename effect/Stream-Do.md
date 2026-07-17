Package: `effect`<br />
Module: `Stream`<br />

## Stream.Do

Provides the entry point for do-notation style stream composition.

**Example** (Starting stream do notation)

```ts
import { Console, Effect, pipe, Stream } from "effect"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L10378)

Since v2.0.0