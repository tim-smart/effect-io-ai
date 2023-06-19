# collectAllToSetN

A sink that collects first `n` distinct inputs into a set.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllToSetN: <In>(n: number) => Sink<never, never, In, In, HashSet.HashSet<In>>
```
