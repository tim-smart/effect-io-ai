Package: `effect`<br />
Module: `Stream`<br />

## Stream.never

The stream that never produces any value or fails with any error.

**Example**

```ts
import { Effect, Stream } from "effect"

const program = Stream.never.pipe(
  Stream.take(0),
  Stream.runCollect
)

Effect.runPromise(program).then(console.log)
// []
```

**Signature**

```ts
declare const never: Stream<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1644)

Since v4.0.0