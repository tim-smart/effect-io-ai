Package: `effect`<br />
Module: `Sink`<br />

## Sink.orElse

Switch to another sink in case of failure

**Signature**

```ts
declare const orElse: { <A2, In2, L2, E2, R2>(that: LazyArg<Sink<A2, In2, L2, E2, R2>>): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2 | A, In & In2, L2 | L, E2 | E, R2 | R>; <A, In, L, E, R, A2, In2, L2, E2, R2>(self: Sink<A, In, L, E, R>, that: LazyArg<Sink<A2, In2, L2, E2, R2>>): Sink<A | A2, In & In2, L | L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1146)

Since v2.0.0