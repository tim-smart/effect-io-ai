Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropWhileFilter

Drops elements while the filter succeeds.

**When to use**

Use when you need to remove a leading stream prefix based on a synchronous
`Filter` result while preserving the remaining original stream elements.

**Details**

`Result.succeed` drops the current element. The first `Result.fail` stops
dropping, emits that original element, and the rest of the source stream is
emitted without further filtering.

**See**

- `dropWhile` for boolean predicate prefix dropping
- `takeWhileFilter` for keeping the accepted prefix as filter success values
- `dropWhileEffect` for effectful predicate prefix dropping

**Signature**

```ts
declare const dropWhileFilter: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<A>, B, X>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6832)

Since v4.0.0