Package: `effect`<br />
Module: `Activity`<br />

## Activity.AnyWithProps

Type-erased activity shape that also exposes success and error schemas for
derived workflow APIs.

**Signature**

```ts
export interface AnyWithProps {
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly successSchema: Schema.Top
  readonly errorSchema: Schema.Top
  readonly executeEncoded: Effect.Effect<any, any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L107)

Since v4.0.0