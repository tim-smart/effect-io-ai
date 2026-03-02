Package: `effect`<br />
Module: `Array`<br />

## Array.dropWhileFilter

Drops elements from the start while a `Filter` succeeds.

- The filter receives `(element, index)`.
- Returns the remaining original elements after the first filter failure.

**Signature**

```ts
declare const dropWhileFilter: { <A, B, X>(f: (input: NoInfer<A>, i: number) => Result.Result<B, X>): (self: Iterable<A>) => Array<A>; <A, B, X>(self: Iterable<A>, f: (input: A, i: number) => Result.Result<B, X>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1430)

Since v4.0.0