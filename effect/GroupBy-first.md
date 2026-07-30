Package: `effect`<br />
Module: `GroupBy`<br />

## GroupBy.first

Only consider the first `n` groups found in the `Stream`.

**Signature**

```ts
declare const first: { (n: number): <K, V, E, R>(self: GroupBy<K, V, E, R>) => GroupBy<K, V, E, R>; <K, V, E, R>(self: GroupBy<K, V, E, R>, n: number): GroupBy<K, V, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GroupBy.ts#L90)

Since v2.0.0