Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStreamWith

Converts the stream to a `ReadableStream` using the provided services.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Example**

```ts
import { ServiceMap, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)
const readableStream = Stream.toReadableStreamWith(stream, ServiceMap.empty())
```

**Signature**

```ts
declare const toReadableStreamWith: (<A, XR>(services: ServiceMap.ServiceMap<XR>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }) => <E, R extends XR>(self: Stream<A, E, R>) => ReadableStream<A>) & (<A, E, XR, R extends XR>(self: Stream<A, E, R>, services: ServiceMap.ServiceMap<XR>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }) => ReadableStream<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10226)

Since v2.0.0