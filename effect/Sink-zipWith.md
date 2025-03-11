## zipWith

Feeds inputs to this sink until it yields a result, then switches over to
the provided sink until it yields a result, finally combining the two
results with `f`.

**Signature**

```ts
declare const zipWith: { <A2, In, In2 extends In, L2, E2, R2, A, A3>(that: Sink<A2, In2, L2, E2, R2>, f: (a: A, a2: A2) => A3, options?: { readonly concurrent?: boolean | undefined; } | undefined): <L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A3, In & In2, L2 | L, E2 | E, R2 | R>; <A, In, L, E, R, A2, In2 extends In, L2, E2, R2, A3>(self: Sink<A, In, L, E, R>, that: Sink<A2, In2, L2, E2, R2>, f: (a: A, a2: A2) => A3, options?: { readonly concurrent?: boolean | undefined; } | undefined): Sink<A3, In & In2, L | L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1449)

Since v2.0.0