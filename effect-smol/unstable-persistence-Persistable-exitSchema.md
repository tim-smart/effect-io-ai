Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.exitSchema

Returns the cached `Exit` schema for a persistable request's success and
error schemas.

**Signature**

```ts
declare const exitSchema: <A extends Schema.Top, E extends Schema.Top>(self: Persistable<A, E>) => Schema.Exit<A, E, Schema.Defect>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L222)

Since v4.0.0