# sync

A sink that immediately ends with the specified lazy value.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const sync: <Z>(evaluate: LazyArg<Z>) => Sink<never, never, unknown, never, Z>
```
