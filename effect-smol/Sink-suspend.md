Package: `effect`<br />
Module: `Sink`<br />

## Sink.suspend

A sink that is created from a lazily evaluated sink.

**Signature**

```ts
declare const suspend: <A, In, L, E, R>(evaluate: LazyArg<Sink<A, In, L, E, R>>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L481)

Since v2.0.0