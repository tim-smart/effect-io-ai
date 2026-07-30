Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.unsafeMake

Unsafely creates a new `Deferred` from the specified `FiberId`.

**Signature**

```ts
declare const unsafeMake: <A, E = never>(fiberId: FiberId.FiberId) => Deferred<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L292)

Since v2.0.0