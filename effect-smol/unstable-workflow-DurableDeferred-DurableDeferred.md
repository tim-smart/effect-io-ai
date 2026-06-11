Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.DurableDeferred

Named durable deferred value whose completion is persisted by the workflow
engine and encoded with success and error schemas.

**Signature**

```ts
export interface DurableDeferred<
  Success extends Schema.Top,
  Error extends Schema.Top = Schema.Never
> {
  readonly [TypeId]: typeof TypeId
  readonly name: string
  readonly successSchema: Success
  readonly errorSchema: Error
  readonly exitSchema: Schema.Exit<Schema.Top, Schema.Top, Schema.Top>
  readonly withActivityAttempt: Effect.Effect<DurableDeferred<Success, Error>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L38)

Since v4.0.0