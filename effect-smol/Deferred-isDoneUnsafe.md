Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.isDoneUnsafe

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

**Signature**

```ts
declare const isDoneUnsafe: <A, E>(self: Deferred<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L575)

Since v2.0.0