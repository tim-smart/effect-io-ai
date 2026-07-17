Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Constraint

A widened `HttpApiGroup` type used when the concrete group identifier,
endpoints, and top-level flag are not needed.

**Signature**

```ts
export interface Constraint {
  readonly [TypeId]: typeof TypeId
  readonly identifier: string
  readonly key: string
  readonly endpoints: Record.ReadonlyRecord<string, HttpApiEndpoint.Constraint>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L171)

Since v4.0.0