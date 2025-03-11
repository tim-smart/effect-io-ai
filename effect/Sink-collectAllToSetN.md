## collectAllToSetN

A sink that collects first `n` distinct inputs into a set.

**Signature**

```ts
declare const collectAllToSetN: <In>(n: number) => Sink<HashSet.HashSet<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L190)

Since v2.0.0