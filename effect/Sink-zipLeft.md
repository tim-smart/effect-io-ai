Package: `effect`<br />
Module: `Sink`<br />

## Sink.zipLeft

Like `Sink.zip` but keeps only the result from this sink.

**Signature**

```ts
declare const zipLeft: { <A2, In, In2 extends In, L2, E2, R2>(that: Sink<A2, In2, L2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; } | undefined): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In & In2, L2 | L, E2 | E, R2 | R>; <A, In, L, E, R, A2, In2 extends In, L2, E2, R2>(self: Sink<A, In, L, E, R>, that: Sink<A2, In2, L2, E2, R2>, options?: { readonly concurrent?: boolean | undefined; } | undefined): Sink<A, In & In2, L | L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1411)

Since v2.0.0