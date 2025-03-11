## catchTag

Recovers from the specified tagged error.

**Signature**

```ts
declare const catchTag: { <K extends E extends { _tag: string; } ? E["_tag"] : never, E, A1, E1, R1>(k: K, f: (e: Extract<E, { _tag: K; }>) => Micro<A1, E1, R1>): <A, R>(self: Micro<A, E, R>) => Micro<A1 | A, E1 | Exclude<E, { _tag: K; }>, R1 | R>; <A, E, R, K extends E extends { _tag: string; } ? E["_tag"] : never, R1, E1, A1>(self: Micro<A, E, R>, k: K, f: (e: Extract<E, { _tag: K; }>) => Micro<A1, E1, R1>): Micro<A | A1, E1 | Exclude<E, { _tag: K; }>, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2816)

Since v3.4.0