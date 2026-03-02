Package: `effect`<br />
Module: `Array`<br />

## Array.dropWhileFilter

Drops elements from the start while a `Filter` succeeds.

- The filter receives `(element, index)`.
- Returns the remaining original elements after the first filter failure.

**Signature**

```ts
declare const dropWhileFilter: { <A, B, X>(f: Filter.Filter<NoInfer<A>, B, X, [i: number]>): (self: Iterable<A>) => Array<A>; <A, B, X>(self: Iterable<A>, f: Filter.Filter<A, B, X, [i: number]>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1431)

Since v4.0.0