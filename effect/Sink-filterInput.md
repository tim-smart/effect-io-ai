Package: `effect`<br />
Module: `Sink`<br />

## Sink.filterInput

Filters the sink's input with the given predicate.

**Signature**

```ts
declare const filterInput: { <In, In1 extends In, In2 extends In1>(f: Refinement<In1, In2>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In2, L, E, R>; <In, In1 extends In>(f: Predicate<In1>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In1, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L605)

Since v2.0.0