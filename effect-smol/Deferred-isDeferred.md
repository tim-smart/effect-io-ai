Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.isDeferred

Checks whether a value is a `Deferred`.

**When to use**

Use to validate unknown values at runtime boundaries before treating them as
`Deferred` values.

**Signature**

```ts
declare const isDeferred: <A, E>(u: unknown) => u is Deferred<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L87)

Since v4.0.0