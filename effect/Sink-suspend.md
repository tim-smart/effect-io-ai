Package: `effect`<br />
Module: `Sink`<br />

## Sink.suspend

Returns a lazily constructed sink that may require effects for its
creation.

**Signature**

```ts
declare const suspend: <A, In, L, E, R>(evaluate: LazyArg<Sink<A, In, L, E, R>>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1319)

Since v2.0.0