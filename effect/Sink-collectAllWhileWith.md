## collectAllWhileWith

Repeatedly runs the sink for as long as its results satisfy the predicate
`p`. The sink's results will be accumulated using the stepping function `f`.

**Signature**

```ts
declare const collectAllWhileWith: { <A, S>(options: { readonly initial: S; readonly while: Predicate<A>; readonly body: (s: S, a: A) => S; }): <In, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<S, In, L, E, R>; <A, In, L extends In, E, R, S>(self: Sink<A, In, L, E, R>, options: { readonly initial: S; readonly while: Predicate<A>; readonly body: (s: S, a: A) => S; }): Sink<S, In, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L242)

Since v2.0.0