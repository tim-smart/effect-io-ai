Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromAsyncIterable

Creates a Channel from a AsyncIterable.

**Signature**

```ts
declare const fromAsyncIterable: <A, D, E>(iterable: AsyncIterable<A, D>, onError: (error: unknown) => E) => Channel<A, E, D>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1601)

Since v4.0.0