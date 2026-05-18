Package: `effect`<br />
Module: `Context`<br />

## Context.ServiceClass.Shape

Runtime and type-level metadata carried by a class-style service key,
including its service type identifier, string key, and service shape.

**Signature**

```ts
export interface Shape<Identifier extends string, Service> {
    readonly [ServiceTypeId]: typeof ServiceTypeId
    readonly key: Identifier
    readonly Service: Service
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L130)

Since v4.0.0