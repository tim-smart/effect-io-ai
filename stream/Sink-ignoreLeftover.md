# ignoreLeftover

Drains the remaining elements from the stream after the sink finishes

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const ignoreLeftover: <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, never, Z>
```
