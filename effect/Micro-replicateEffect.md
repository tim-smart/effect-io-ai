## replicateEffect

Performs this effect the specified number of times and collects the
results.

**Signature**

```ts
declare const replicateEffect: { (n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; }): <A, E, R>(self: Micro<A, E, R>) => Micro<Array<A>, E, R>; (n: number, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): <A, E, R>(self: Micro<A, E, R>) => Micro<void, E, R>; <A, E, R>(self: Micro<A, E, R>, n: number, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; }): Micro<Array<A>, E, R>; <A, E, R>(self: Micro<A, E, R>, n: number, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): Micro<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2371)

Since v3.11.0