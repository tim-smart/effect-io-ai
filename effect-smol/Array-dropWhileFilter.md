Package: `effect`<br />
Module: `Array`<br />

## Array.dropWhileFilter

Drops elements from the start while a `Filter` succeeds.

**When to use**

Use when dropping a prefix requires computing a `Result` per element instead
of a simple boolean predicate.

**Details**

- The filter receives `(element, index)`.
- Returns the remaining original elements after the first filter failure.

**See**

- `dropWhile` for dropping a prefix with a simple boolean predicate
- `takeWhileFilter` for keeping only the matching prefix

**Signature**

```ts
declare const dropWhileFilter: { <A, B, X>(f: (input: NoInfer<A>, i: number) => Result.Result<B, X>): (self: Iterable<A>) => Array<A>; <A, B, X>(self: Iterable<A>, f: (input: A, i: number) => Result.Result<B, X>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1675)

Since v4.0.0