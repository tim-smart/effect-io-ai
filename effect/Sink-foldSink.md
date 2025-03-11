## foldSink

Folds over the result of the sink

**Signature**

```ts
declare const foldSink: { <E, A1, In, In1 extends In, L1, E1, R1, A, A2, In2 extends In, L2, E2, R2>(options: { readonly onFailure: (err: E) => Sink<A1, In1, L1, E1, R1>; readonly onSuccess: (a: A) => Sink<A2, In2, L2, E2, R2>; }): <L, R>(self: Sink<A, In, L, E, R>) => Sink<A1 | A2, In1 & In2, L1 | L2, E1 | E2, R1 | R2 | R>; <A, In, L, E, R, A1, In1 extends In, L1, E1, R1, A2, In2 extends In, L2, E2, R2>(self: Sink<A, In, L, E, R>, options: { readonly onFailure: (err: E) => Sink<A1, In1, L1, E1, R1>; readonly onSuccess: (a: A) => Sink<A2, In2, L2, E2, R2>; }): Sink<A1 | A2, In1 & In2, L1 | L2, E1 | E2, R | R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L659)

Since v2.0.0