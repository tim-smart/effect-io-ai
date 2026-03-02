Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapEffect

Returns a new channel, which sequentially combines this channel, together
with the provided factory function, which creates a second channel based on
the output values of this channel. The result is a channel that will first
perform the functions of this channel, before performing the functions of
the created channel (including yielding its terminal value).

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class NetworkError extends Data.TaggedError("NetworkError")<{
  readonly url: string
}> {}

// Transform values using effectful operations
const urlsChannel = Channel.fromIterable([
  "/api/users/1",
  "/api/users/2",
  "/api/users/3"
])

const fetchDataChannel = Channel.mapEffect(
  urlsChannel,
  (url) =>
    Effect.tryPromise({
      try: () => fetch(url).then((res) => res.json()),
      catch: () => new NetworkError({ url })
    })
)

// Concurrent processing with options
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])
const processedChannel = Channel.mapEffect(
  numbersChannel,
  (n) =>
    Effect.gen(function*() {
      yield* Effect.sleep("100 millis") // Simulate async work
      return n * n
    }),
  { concurrency: 3, unordered: true }
)
```

**Signature**

```ts
declare const mapEffect: { <OutElem, OutElem1, OutErr1, Env1>(f: (d: OutElem, i: number) => Effect.Effect<OutElem1, OutErr1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem1, OutErr1 | OutErr, OutDone, InElem, InErr, InDone, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: OutElem, i: number) => Effect.Effect<OutElem1, OutErr1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; }): Channel<OutElem1, OutErr | OutErr1, OutDone, InElem, InErr, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1785)

Since v2.0.0