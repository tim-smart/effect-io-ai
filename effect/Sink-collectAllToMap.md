## collectAllToMap

A sink that collects all of its inputs into a map. The keys are extracted
from inputs using the keying function `key`; if multiple inputs use the
same key, they are merged using the `merge` function.

**Signature**

```ts
declare const collectAllToMap: <In, K>(key: (input: In) => K, merge: (x: In, y: In) => In) => Sink<HashMap.HashMap<K, In>, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L157)

Since v2.0.0