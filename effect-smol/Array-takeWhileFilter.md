Package: `effect`<br />
Module: `Array`<br />

## Array.takeWhileFilter

Takes elements from the start while a `Filter` succeeds, collecting transformed values.

- The filter receives `(element, index)`.
- Stops at the first filter failure.

**Signature**

```ts
declare const takeWhileFilter: { <A, B, X>(f: Filter.Filter<NoInfer<A>, B, X, [i: number]>): (self: Iterable<A>) => Array<B>; <A, B, X>(self: Iterable<A>, f: Filter.Filter<A, B, X, [i: number]>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1263)

Since v4.0.0