# collectAllToSetN

A sink that collects first `n` distinct inputs into a set.

To import and use `collectAllToSetN` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.collectAllToSetN
```

**Signature**

```ts
export declare const collectAllToSetN: <In>(n: number) => Sink<never, never, In, In, HashSet.HashSet<In>>
```
