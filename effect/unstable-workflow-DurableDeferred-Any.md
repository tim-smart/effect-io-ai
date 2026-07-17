Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.Any

Type-erased durable deferred shape for APIs that only need the deferred
identity and name.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
  readonly name: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DurableDeferred.ts#L57)

Since v4.0.0