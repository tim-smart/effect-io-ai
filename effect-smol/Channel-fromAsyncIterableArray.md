Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromAsyncIterableArray

Creates a channel from an `AsyncIterable`, emitting each yielded value as a
single-element non-empty array.

**Details**

The iterator's return value becomes the channel's done value. Thrown or
rejected iterator errors are converted with `onError`. If the channel scope
closes early and the iterator has a `return` method, that method is called.

**Signature**

```ts
declare const fromAsyncIterableArray: <A, D, E>(iterable: AsyncIterable<A, D>, onError: (error: unknown) => E) => Channel<Arr.NonEmptyReadonlyArray<A>, E, D>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1779)

Since v4.0.0