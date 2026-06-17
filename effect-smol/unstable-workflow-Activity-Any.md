Package: `effect`<br />
Module: `Activity`<br />

## Activity.Any

Type-erased activity shape for APIs that only need the activity identity,
name, annotations, and encoded execution.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly executeEncoded: Effect.Effect<any, any, any>
  readonly annotations: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L94)

Since v4.0.0