Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Handlers.Item

Runtime representation of one registered event handler, including its event
metadata, captured context, and handler function.

**Signature**

```ts
type Item<R> = {
    readonly event: Event.AnyWithProps
    readonly context: Context.Context<R>
    readonly handler: (options: {
      readonly storeId: StoreId
      readonly payload: unknown
      readonly entry: Entry
      readonly conflicts: ReadonlyArray<{
        readonly entry: Entry
        readonly payload: unknown
      }>
    }) => Effect.Effect<unknown, unknown, R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L329)

Since v4.0.0