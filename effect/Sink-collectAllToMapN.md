## collectAllToMapN

A sink that collects first `n` keys into a map. The keys are calculated
from inputs using the keying function `key`; if multiple inputs use the the
same key, they are merged using the `merge` function.

**Signature**

```ts
declare const collectAllToMapN: <In, K>(n: number, key: (input: In) => K, merge: (x: In, y: In) => In) => Sink<HashMap.HashMap<K, In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L170)

Since v2.0.0