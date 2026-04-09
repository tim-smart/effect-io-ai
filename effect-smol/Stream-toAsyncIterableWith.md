Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterableWith

Converts the stream to an `AsyncIterable` using the provided services.

**Example**

```ts
import { Context, Stream } from "effect"

const stream = Stream.make(1, 2, 3)
const iterable = Stream.toAsyncIterableWith(stream, Context.empty())

const collect = async () => {
  const results: Array<number> = []
  for await (const value of iterable) {
    results.push(value)
  }
  return results
}
```

**Signature**

```ts
declare const toAsyncIterableWith: { <XR>(context: Context.Context<XR>): <A, E, R extends XR>(self: Stream<A, E, R>) => AsyncIterable<A>; <A, E, XR, R extends XR>(self: Stream<A, E, R>, context: Context.Context<XR>): AsyncIterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10534)

Since v2.0.0