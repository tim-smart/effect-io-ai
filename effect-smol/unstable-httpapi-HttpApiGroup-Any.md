Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Any

A widened `HttpApiGroup` type used when the concrete group name, endpoints, and
top-level flag are not needed.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
  readonly identifier: string
  readonly key: string
  readonly endpoints: Record.ReadonlyRecord<string, HttpApiEndpoint.Any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L161)

Since v4.0.0