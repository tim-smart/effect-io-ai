Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMapEffect

Filters and maps elements in one pass effectfully using a `FilterEffect`.

**When to use**

Use to apply effectful logic that can reject stream elements or emit
transformed values before they continue downstream.

**Details**

`Result.succeed` values are emitted, `Result.fail` values are skipped, and
effect failures fail the stream.

**See**

- `filterMap` for the synchronous `Filter` variant
- `filterEffect` for effectfully keeping original elements
- `mapEffect` for effectfully transforming every element

**Signature**

```ts
declare const filterMapEffect: { <A, B, X, EX, RX>(filter: Filter.FilterEffect<NoInfer<A>, B, X, EX, RX>): <E, R>(self: Stream<A, E, R>) => Stream<B, E | EX, R | RX>; <A, E, R, B, X, EX, RX>(self: Stream<A, E, R>, filter: Filter.FilterEffect<A, B, X, EX, RX>): Stream<B, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4424)

Since v2.0.0