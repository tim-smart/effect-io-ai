# collectAllToMapN

A sink that collects first `n` keys into a map. The keys are calculated
from inputs using the keying function `key`; if multiple inputs use the the
same key, they are merged using the `merge` function.

To import and use `collectAllToMapN` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllToMapN
```

**Signature**

```ts
export declare const collectAllToMapN: <In, K>(
  n: number,
  key: (input: In) => K,
  merge: (x: In, y: In) => In
) => Sink<HashMap.HashMap<K, In>, In, In>
```
