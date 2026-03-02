Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.EventGroup

An `EventGroup` is a collection of `Event`s. You can use an `EventGroup` to
represent a portion of your domain.

The events can be implemented later using the `EventLogBuilder.group` api.

**Signature**

```ts
export interface EventGroup<
  out Events extends Event.Any = Event.Any
> extends Pipeable {
  readonly _?: symbol
  readonly __type?: Events | undefined
  readonly [TypeId]: TypeId
  readonly events: Record.ReadonlyRecord<string, Events>

  /**
   * Add an `Event` to the `EventGroup`.
   */
  add<
    Tag extends string,
    Payload extends Schema.Top = typeof Schema.Void,
    Success extends Schema.Top = typeof Schema.Void,
    Error extends Schema.Top = typeof Schema.Never
  >(options: {
    readonly tag: Tag
    readonly primaryKey: (payload: Schema.Schema.Type<Payload>) => string
    readonly payload?: Payload
    readonly success?: Success
    readonly error?: Error
  }): EventGroup<Events | Event.Event<Tag, Payload, Success, Error>>

  /**
   * Add an error schema to all the events in the `EventGroup`.
   */
  addError<Error extends Schema.Top>(error: Error): EventGroup<Event.AddError<Events, Error>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L37)

Since v4.0.0