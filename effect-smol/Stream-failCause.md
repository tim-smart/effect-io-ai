Package: `effect`<br />
Module: `Stream`<br />

## Stream.failCause

Creates a stream that fails with the specified `Cause`.

**Example**

```ts
import { Cause, Console, Effect, Stream } from "effect"

const stream = Stream.failCause(Cause.fail("Database connection failed")).pipe(
  Stream.catchCause(() => Stream.succeed("recovered"))
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
  // Output: [ "recovered" ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L870)

Since v2.0.0