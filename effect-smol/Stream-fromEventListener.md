Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEventListener

Creates a stream from an event listener.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

declare const target: Stream.EventListener<number>

const program = Effect.gen(function*() {
  const stream = Stream.fromEventListener(target, "data").pipe(
    Stream.take(3)
  )
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromEventListener: <A = unknown>(target: EventListener<A>, type: string, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | undefined; } | undefined) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1457)

Since v3.1.0