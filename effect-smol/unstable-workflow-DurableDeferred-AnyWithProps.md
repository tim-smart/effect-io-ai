Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.AnyWithProps

Type-erased durable deferred shape that also exposes success, error, and
exit schemas.

**Signature**

```ts
export interface AnyWithProps {
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly successSchema: Schema.Top
  readonly errorSchema: Schema.Top
  readonly exitSchema: Schema.Exit<any, any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L69)

Since v4.0.0