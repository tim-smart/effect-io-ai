## replicate

Replicates the given effect `n` times.

**Signature**

```ts
declare const replicate: { (n: number): <A, E, R>(self: Micro<A, E, R>) => Array<Micro<A, E, R>>; <A, E, R>(self: Micro<A, E, R>, n: number): Array<Micro<A, E, R>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2356)

Since v3.11.0