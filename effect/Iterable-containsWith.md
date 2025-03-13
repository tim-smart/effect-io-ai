Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.containsWith

Returns a function that checks if an `Iterable` contains a given value using a provided `isEquivalent` function.

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Iterable<A>) => boolean; (self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L529)

Since v2.0.0