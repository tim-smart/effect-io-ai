Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.EventGroup

Typed collection of event definitions that represents a portion of an event log
domain.

**When to use**

Use when build groups from `empty.add(...)`, then provide implementations for the events
with `EventLog.group`.

**Signature**

```ts
export interface EventGroup<
  out Events extends Event.Any = Event.Any
> extends Pipeable {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L69)

Since v4.0.0