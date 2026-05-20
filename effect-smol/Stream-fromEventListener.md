Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEventListener

Creates a stream from an event listener.

**Example** (Creating a stream from an event listener)

```ts
import { Effect, Stream } from "effect"

class NumberTarget implements Stream.EventListener<number> {
  addEventListener(event: string, f: (event: number) => void) {
    if (event === "data") {
      f(1)
      f(2)
      f(3)
    }
  }
  removeEventListener(_event: string, _f: (event: number) => void) {}
}

Effect.runPromise(Effect.gen(function*() {
  const stream = Stream.fromEventListener(new NumberTarget(), "data").pipe(
    Stream.take(3)
  )
  const values = yield* Stream.runCollect(stream)
  yield* Effect.sync(() => console.log(values))
}))

// [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromEventListener: <A = unknown>(target: EventListener<A>, type: string, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | undefined; } | undefined) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1597)

Since v3.1.0