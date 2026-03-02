Package: `effect`<br />
Module: `Stream`<br />

## Stream.withSpan

Wraps the stream with a new span for tracing.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.fromArray([1, 2, 3]).pipe(Stream.withSpan("numbers"))

Effect.runPromise(
  Effect.gen(function*() {
    const values = yield* Stream.runCollect(stream)
    yield* Console.log(values)
  })
)
// [1, 2, 3]
```

**Signature**

```ts
declare const withSpan: { (name: string, options?: SpanOptions): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, ParentSpan>>; <A, E, R>(self: Stream<A, E, R>, name: string, options?: SpanOptions): Stream<A, E, Exclude<R, ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9468)

Since v4.0.0