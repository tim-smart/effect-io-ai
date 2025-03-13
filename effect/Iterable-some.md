Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.some

Check if a predicate holds true for some `Iterable` element.

**Signature**

```ts
declare const some: { <A>(predicate: (a: A, i: number) => boolean): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L944)

Since v2.0.0