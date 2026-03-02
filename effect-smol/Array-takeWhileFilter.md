Package: `effect`<br />
Module: `Array`<br />

## Array.takeWhileFilter

Takes elements from the start while a `Filter` succeeds, collecting transformed values.

- The filter receives `(element, index)`.
- Stops at the first filter failure.

**Signature**

```ts
declare const takeWhileFilter: { <A, B, X>(f: (input: NoInfer<A>, i: number) => Result.Result<B, X>): (self: Iterable<A>) => Array<B>; <A, B, X>(self: Iterable<A>, f: (input: NoInfer<A>, i: number) => Result.Result<B, X>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1262)

Since v4.0.0