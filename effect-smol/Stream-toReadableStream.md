Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStream

Converts a stream to a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Example**

```ts
import { Stream } from "effect"

const readableStream = Stream.toReadableStream(Stream.make(1, 2, 3))
const reader = readableStream.getReader()
```

**Signature**

```ts
declare const toReadableStream: { <A>(options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): <E>(self: Stream<A, E>) => ReadableStream<A>; <A, E>(self: Stream<A, E>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): ReadableStream<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10276)

Since v2.0.0