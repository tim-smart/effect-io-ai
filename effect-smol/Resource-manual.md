Package: `effect`<br />
Module: `Resource`<br />

## Resource.manual

Creates a `Resource` that must be refreshed manually.

**Signature**

```ts
declare const manual: <A, E, R>(acquire: Effect.Effect<A, E, R>) => Effect.Effect<Resource<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L64)

Since v2.0.0