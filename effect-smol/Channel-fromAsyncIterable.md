Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromAsyncIterable

Creates a channel that pulls values from an `AsyncIterable`.

Each yielded value is emitted as an output element. The iterator's return
value becomes the channel's done value. Thrown or rejected iterator errors
are converted with `onError`. If the channel scope closes early and the
iterator has a `return` method, that method is called.

**Signature**

```ts
declare const fromAsyncIterable: <A, D, E>(iterable: AsyncIterable<A, D>, onError: (error: unknown) => E) => Channel<A, E, D>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1691)

Since v4.0.0