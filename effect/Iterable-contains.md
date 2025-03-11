## contains

Returns a function that checks if a `Iterable` contains a given value using the default `Equivalence`.

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L550)

Since v2.0.0