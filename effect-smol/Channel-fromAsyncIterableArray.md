Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromAsyncIterableArray

Creates a Channel from a AsyncIterable that emits arrays of elements.

**Signature**

```ts
declare const fromAsyncIterableArray: <A, D, E>(iterable: AsyncIterable<A, D>, onError: (error: unknown) => E) => Channel<Arr.NonEmptyReadonlyArray<A>, E, D>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1615)

Since v4.0.0