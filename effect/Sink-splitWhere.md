## splitWhere

Splits the sink on the specified predicate, returning a new sink that
consumes elements until an element after the first satisfies the specified
predicate.

**Signature**

```ts
declare const splitWhere: { <In>(f: Predicate<In>): <A, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, In, E, R>; <A, In, L extends In, E, R>(self: Sink<A, In, L, E, R>, f: Predicate<In>): Sink<A, In, In, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1272)

Since v2.0.0