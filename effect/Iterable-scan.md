Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.scan

Reduce an `Iterable` from the left, keeping all intermediate results instead of only the final result.

**Signature**

```ts
declare const scan: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L214)

Since v2.0.0