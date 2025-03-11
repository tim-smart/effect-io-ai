## Handlers

Represents a handled `EventGroup`.

**Signature**

```ts
export interface Handlers<
  R,
  Events extends Event.Any = never
> extends Pipeable {
  readonly [HandlersTypeId]: {
    _Endpoints: Covariant<Events>
  }
  readonly group: EventGroup.AnyWithProps
  readonly handlers: Record.ReadonlyRecord<string, Handlers.Item<R>>
  readonly context: Context.Context<any>

  /**
   * Add the implementation for an `Event` to a `Handlers` group.
   */
  handle<Tag extends Events["tag"], R1>(
    name: Tag,
    handler: (
      options: {
        readonly payload: Event.PayloadWithTag<Events, Tag>
        readonly entry: Entry
        readonly conflicts: Array<{
          readonly entry: Entry
          readonly payload: Event.PayloadWithTag<Events, Tag>
        }>
      }
    ) => Effect.Effect<Event.SuccessWithTag<Events, Tag>, Event.ErrorWithTag<Events, Tag>, R1>
  ): Handlers<
    R | R1,
    Event.ExcludeTag<Events, Tag>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/EventLog.ts#L85)

Since v1.0.0