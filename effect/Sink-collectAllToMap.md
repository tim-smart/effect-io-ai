# collectAllToMap

A sink that collects all of its inputs into a map. The keys are extracted
from inputs using the keying function `key`; if multiple inputs use the
same key, they are merged using the `merge` function.

To import and use `collectAllToMap` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.collectAllToMap
```

**Signature**

```ts
export declare const collectAllToMap: <In, K>(
  key: (input: In) => K,
  merge: (x: In, y: In) => In
) => Sink<never, never, In, never, HashMap.HashMap<K, In>>
```
