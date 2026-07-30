Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.forEach

Iterate over the `Iterable` applying `f`.

**Signature**

```ts
declare const forEach: { <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void; <A>(self: Iterable<A>, f: (a: A, i: number) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L986)

Since v2.0.0